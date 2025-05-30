<?php
$baseDir = __DIR__ . '/SQL';
$sistemas = array_filter(scandir($baseDir), fn($item) => !in_array($item, ['.', '..']) && is_dir("$baseDir/$item"));

$sistemaSelecionado = $_GET['sistema'] ?? null;
$arquivoSelecionado = $_GET['file'] ?? null;

$mensagem = '';
$arquivos = [];
$conteudoSQL = '';
$colunas = [];

if ($sistemaSelecionado) {
    $path = "$baseDir/$sistemaSelecionado";
    if (file_exists("$path/Parametros.ini")) {
        $arquivos = array_filter(scandir($path), fn($f) => pathinfo($f, PATHINFO_EXTENSION) === 'sql');
    } else {
        $mensagem = "<div class='alert error'>❌ Parâmetros não encontrados em <strong>$sistemaSelecionado</strong>.</div>";
    }
}

if ($arquivoSelecionado && $sistemaSelecionado) {
    $filePath = "$baseDir/$sistemaSelecionado/" . basename($arquivoSelecionado);
    if (file_exists($filePath)) {
        $raw = file_get_contents($filePath);
        $conteudoSQL = htmlspecialchars($raw);

        // Extrair aliases de coluna (tudo que vem depois de "AS ")
        if (preg_match_all('/\bAS\s+([A-Za-z0-9_]+)/i', $raw, $m)) {
            $colunas = $m[1];
        }
    } else {
        $mensagem = "<div class='alert error'>❌ Arquivo <strong>$arquivoSelecionado</strong> não encontrado.</div>";
    }
}
?>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width,initial-scale=1">
  <title>Conversor de Bases</title>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="public/index.css">
  <script>
    function openTab(evt, tabName) {
      document.querySelectorAll('.tab-content').forEach(el => el.style.display = 'none');
      document.querySelectorAll('.tab-btn').forEach(btn => btn.classList.remove('active'));
      document.getElementById(tabName).style.display = 'block';
      evt.currentTarget.classList.add('active');
    }
    window.addEventListener('DOMContentLoaded', () => {
      const btn = document.querySelector('.tab-btn');
      if (btn) btn.click();
    });
  </script>
</head>
<body>
  <div class="card">
    <h1>Conversor de Bancos</h1>

    <form method="get" class="form-select">
      <select name="sistema" onchange="this.form.submit()">
        <option value="">→ Escolha o sistema ←</option>
        <?php foreach ($sistemas as $sis): ?>
          <option value="<?= htmlspecialchars($sis) ?>" <?= $sis === $sistemaSelecionado ? 'selected' : '' ?>>
            <?= htmlspecialchars($sis) ?>
          </option>
        <?php endforeach; ?>
      </select>
    </form>

    <?= $mensagem ?>

    <?php if ($arquivos): ?>
      <div class="files">
        <h2>Arquivos SQL:</h2>
        <ul>
          <?php foreach ($arquivos as $a): ?>
            <li>
              <a href="?sistema=<?= urlencode($sistemaSelecionado) ?>&file=<?= urlencode($a) ?>" class="file-link">
                <?= htmlspecialchars($a) ?>
              </a>
            </li>
          <?php endforeach; ?>
        </ul>
      </div>
    <?php endif; ?>

    <?php if ($conteudoSQL): ?>
      <div class="tabs">
        <button class="tab-btn" onclick="openTab(event,'Colunas')">Colunas</button>
        <button class="tab-btn" onclick="openTab(event,'SQL')">SQL</button>
      </div>

      <div id="Colunas" class="tab-content">
        <h2>Colunas detectadas</h2>
        <ul class="columns-list">
          <?php foreach ($colunas as $col): ?>
            <li><?= htmlspecialchars($col) ?></li>
          <?php endforeach; ?>
        </ul>
      </div>

      <div id="SQL" class="tab-content">
        <h2>Conteúdo SQL</h2>
        <pre><?= $conteudoSQL ?></pre>
      </div>

      <form action="execute.php" method="post" class="form-converter">
        <input type="hidden" name="sistema" value="<?= htmlspecialchars($sistemaSelecionado) ?>">
        <input type="hidden" name="file" value="<?= htmlspecialchars($arquivoSelecionado) ?>">
        <button type="submit" class="btn">Converter</button>
      </form>
    <?php endif; ?>
  </div>
</body>
</html>
