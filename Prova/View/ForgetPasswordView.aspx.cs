using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Prova.Repository;
using Prova.Model;
using System.Net.Mail;

namespace Prova.View
{
    public partial class ForgetPasswordView : System.Web.UI.Page
    {
        UsuarioRepository UR = new UsuarioRepository();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void grdDados_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            
        }

        protected void bttEnviar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtEmail.Text))
            {
                lblAviso.Text = "... ... Você não digitou nada!";
                return;
            }
            Usuario usuario = UR.GetOneE(txtEmail.Text);
            if (usuario != null)
            {
                System.Net.Mail.SmtpClient client = new System.Net.Mail.SmtpClient();
                client.Host = "smtp.gmail.com";
                client.Port = 587;
                client.EnableSsl = true;
                client.UseDefaultCredentials = false;
                client.Credentials = new System.Net.NetworkCredential("cnecsistemas2016@gmail.com", "cnec2017");

                MailMessage mail = new MailMessage();
                mail.Sender = new System.Net.Mail.MailAddress("cnecsistemas2016@gmail.com", "João Paulo");
                mail.From = new MailAddress(usuario.Email, "Recuperação de Senha");
                mail.To.Add(new MailAddress(usuario.Email, "Recuperação de Senha"));
                mail.Subject = "Recuperação de Senha Para (Programa)";
                mail.Body = "Um pedido de recuperação de senha foi enviar de Programa(Nome em desenvolvimento) para o usuario: " + usuario.Usuario1 + ", Registrado no nome de " + usuario.Nome + ", a senha registrada para esse usuario é: " + usuario.Senha;
                mail.Priority = MailPriority.High;
                mail.BodyEncoding = System.Text.Encoding.UTF8;
                mail.IsBodyHtml = true;

                try
                {
                    client.Send(mail);
                    lblAviso.Text = "Email enviado com sucesso para: " + usuario.Email;
                    txtEmail.Text = "";
                }
                catch (Exception erro)
                {
                    Response.Write(erro.Message);

                }
            }
            else
            {
                lblAviso.Text = "Nenhum usuario registrado com este Email";
                txtEmail.Text = "";
            }
            
        }
    }
}