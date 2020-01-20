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
    public partial class SobreView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void bttPesquisar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/View/PesquisaView.aspx");
        }
    }
}