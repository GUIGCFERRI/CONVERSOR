const requireRole = (role) => {
  return (req, res, next) => {
    console.log("Token decodificado (req.user):", req.user); // 👈 ADICIONE ISTO

    if (!req.user || req.user.role !== role) {
      return res.status(403).json({ error: 'Acesso negado: permissão insuficiente' });
    }
    next();
  };
};

module.exports = requireRole;
