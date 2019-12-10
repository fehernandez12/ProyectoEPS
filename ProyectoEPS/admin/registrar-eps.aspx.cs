using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;

namespace ProyectoEPS.admin
{
    public partial class registrar_eps : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            OrmEpsDataContext db = new OrmEpsDataContext();
            ClsEstadoEps estadoEps = new ClsEstadoEps();
            List<estado_eps> listaEstados = estadoEps.listarTodas();
            ListaEstadoEps.DataSource = listaEstados;
            ListaEstadoEps.DataTextField = "estado_eps";
            ListaEstadoEps.DataValueField = "idEstado_eps";
            ListaEstadoEps.DataBind();
        }

        protected void ListaEstadoEps_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void BotonRegistrar_Click(object sender, EventArgs e)
        {
            ClsEps epsDao = new ClsEps();
            ClsEstadoEps estadoEpsDao = new ClsEstadoEps();
            Logica.eps epsNueva = new Logica.eps();
            epsNueva.idEps = 0;
            epsNueva.nombre = NombreEps.Text;
            epsNueva.nit = NitEps.Text;
            epsNueva.direccion = DireccionEps.Text;
            epsNueva.telefono = TelefonoEps.Text;
            epsNueva.password = PasswordEps.Text;
            epsNueva.estado_eps_idEstado_eps = estadoEpsDao.consultarNombre(ListaEstadoEps.SelectedItem.Text).idEstado_eps;
            string mensaje = epsDao.registrarEps(epsNueva);
            MessageBox.Show(mensaje);
            epsNueva = new Logica.eps();
            Response.Redirect("bienvenido-admin.aspx", false);
        }
    }
}