const jwt = require('jsonwebtoken');

const authMiddleware = (req, res, next) => {
  const authHeader = req.headers['authorization'];

  // Formato esperado: "Bearer token_aqui"
  const token = authHeader && authHeader.split(' ')[1];

  if (!token) {
    return res.status(401).json({ error: 'Token não fornecido' });
  }

  jwt.verify(token, process.env.JWT_SECRET, (err, userData) => {
    if (err) {
      return res.status(403).json({ error: 'Token inválido ou expirado' });
    }

    req.user = userData; // Ex: { id, email, role }
    next();
  });
};

module.exports = authMiddleware;
