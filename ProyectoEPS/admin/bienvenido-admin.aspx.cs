using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoEPS.admin
{
    public partial class bienvenido_admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BotonRegistrarUsuario_Click(object sender, EventArgs e)
        {
            Response.Redirect("registrar-usuario.aspx", false);
        }
    }
}