using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;

namespace ProyectoEPS
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BotonLoginUsuario_Click(object sender, EventArgs e)
        {
            ClsUsuario usuarioDao = new ClsUsuario();
            usuario usuarioLogin = new usuario();
            int cedula = int.Parse(UsuarioCedula.Text);
            usuarioLogin = usuarioDao.loginUsuario(cedula);
            if (usuarioLogin != null)
            {
                Session["cedulaLogin"] = usuarioLogin.cedula;
                Session["nombreLogin"] = usuarioLogin.nombre + " " + usuarioLogin.apellido;
                Session["epsLogin"] = usuarioLogin.idEps;
                Response.Redirect("usuario/main-usuarios.aspx", false);
            }
            else
            {
                // Mensaje de que no se ha logueado

            }
        }

        protected void BotonLoginEps_Click(object sender, EventArgs e)
        {
            ClsEps epsDao = new ClsEps();
            Logica.eps epsLogin = new Logica.eps();
            string nit = EpsNit.Text;
            string password = EpsPassword.Text;
            epsLogin = epsDao.loginEps(nit, password);
            if (epsLogin != null)
            {
                Session["nitLogin"] = epsLogin.nit;
                Session["nombreLogin"] = epsLogin.nombre;
                Response.Redirect("eps/main-eps.aspx", false);
            }
            else
            {
                // Mensaje de que no se ha logueado

            }
        }

        protected void BotonLoginAdmin_Click(object sender, EventArgs e)
        {
            ClsAdmin adminDao = new ClsAdmin();
            ClsUsuario usuarioDao = new ClsUsuario();
            administrador adminLogin = new administrador();
            int cedula = int.Parse(AdminCedula.Text);
            string password = AdminPassword.Text;
            adminLogin = adminDao.loginAdmin(cedula, password);
            if (adminLogin != null)
            {
                Session["nombreLogin"] = usuarioDao.consultarId(adminLogin.usuario_cedula).nombre + " " +
                    usuarioDao.consultarId(adminLogin.usuario_cedula).apellido;
                Response.Redirect("admin/main-admin.aspx", false);
            }
            else
            {
                //Mensaje
            }
        }
    }
}