using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoEPS
{
    public partial class main_usuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BotonLogoutUsuario_Click(object sender, EventArgs e)
        {
            Response.Redirect("../index.aspx", false);
        }
    }
}