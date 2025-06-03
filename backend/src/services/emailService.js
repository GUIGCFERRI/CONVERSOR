const nodemailer = require('nodemailer');

const transporter = nodemailer.createTransport({
  service: 'gmail',
  auth: {
    user: process.env.EMAIL_USER,      // seu.email@gmail.com
    pass: process.env.EMAIL_PASS       // senha do app gerada pelo Google
  }
});

const sendRecoveryEmail = (to, token) => {
  const link = `http://localhost:3000/resetar-senha?token=${token}`;

  return transporter.sendMail({
    from: `"Conversor" <${process.env.EMAIL_USER}>`,
    to,
    subject: 'Recuperação de Senha',
    html: `
      <p>Você solicitou a redefinição de senha.</p>
      <p><a href="${link}">Clique aqui para redefinir</a></p>
      <p>Ou copie e cole no navegador: ${link}</p>
    `
  });
};

module.exports = { sendRecoveryEmail };
