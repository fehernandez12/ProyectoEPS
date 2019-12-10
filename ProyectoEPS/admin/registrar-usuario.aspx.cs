using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;

namespace ProyectoEPS.admin
{
    public partial class registrar_usuario : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            OrmEpsDataContext db = new OrmEpsDataContext();
            ClsEps epsLista = new ClsEps();
            List<Logica.eps> listaEps = epsLista.listarTodas();
            ListaEpsUsuario.DataSource = listaEps;
            ListaEpsUsuario.DataTextField = "nombre";
            ListaEpsUsuario.DataValueField = "idEps";
            ListaEpsUsuario.DataBind();
        }

        protected void BotonRegistrar_Click(object sender, EventArgs e)
        {
            ClsUsuario usuarioDao = new ClsUsuario();
            ClsEps epsDao = new ClsEps();
            usuario usu = new usuario();
            usu.cedula = int.Parse(CedulaUsuario.Text);
            usu.nombre = NombreUsuario.Text;
            usu.apellido = ApellidoUsuario.Text;
            usu.direccion = DireccionUsuario.Text;
            usu.telefono = TelefonoUsuario.Text;
            usu.email = EmailUsuario.Text;
            usu.idEps = epsDao.consultarNombre(ListaEpsUsuario.SelectedItem.Text).idEps;
            string mensaje = usuarioDao.registrarUsuario(usu);
            MessageBox.Show(mensaje);
            usu = new usuario();
            Response.Redirect("bienvenido-admin.aspx", false);
        }
    }
}