using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Prova.Repository;
using Prova.Model;

namespace Prova.View
{
    public partial class PesquisaView : System.Web.UI.Page
    {
        UsuarioRepository UR = new UsuarioRepository();
        protected void Page_Load(object sender, EventArgs e)
        {
            grdDados.DataSource = UR.GetAll();
            grdDados.DataBind();
        }

        protected void grdDados_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            List<Usuario> listUsuario = ((List<Usuario>)grdDados.DataSource);
        }

        protected void bttPesquisar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtPesquisarUsuario.Text) && string.IsNullOrEmpty(txtPesquisarNome.Text))
            {
                lblAviso.Text = "... ... Você não digitou nada!";
                grdDados.DataSource = UR.GetAll();
                grdDados.DataBind();
                return;
            }
            
            if (string.IsNullOrEmpty(txtPesquisarUsuario.Text))
            {
                grdDados.DataSource = UR.GetAllNome(txtPesquisarNome.Text);
                grdDados.DataBind();
                lblAviso.Text = "";
            }
            else if (string.IsNullOrEmpty(txtPesquisarNome.Text))
            {
                grdDados.DataSource = UR.GetAllUsuario(txtPesquisarUsuario.Text);
                grdDados.DataBind();
                lblAviso.Text = "";
            }
        }
    }
}