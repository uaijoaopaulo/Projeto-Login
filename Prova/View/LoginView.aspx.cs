using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Prova.Repository;
using Prova.Model;
using System.Drawing;

namespace Prova.View
{
    public partial class LoginView : System.Web.UI.Page
    {
        UsuarioRepository UR = new UsuarioRepository();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bttProximo_Click(object sender, EventArgs e)
        {
            Usuario usuario = UR.GetOneU(txtEmail.Text, txtSenha.Text);
            if (usuario != null)
            {
                if ((txtEmail.Text == usuario.Email && txtSenha.Text == usuario.Senha) || txtEmail.Text == usuario.Usuario1 && txtSenha.Text == usuario.Senha)
                {
                    Response.Redirect("~/View/PesquisaView.aspx");
                }
                else
                {
                    txtEmail.Text = "";
                    txtSenha.Text = "";
                    lblAviso.Text = "Dados não conferem";
                }
            }
            else
            {
                lblAviso.Text = "Usuário não encontrado";
                return;
            }
        }
    }
}