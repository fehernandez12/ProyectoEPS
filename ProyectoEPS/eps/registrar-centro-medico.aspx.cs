using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;

namespace ProyectoEPS.eps
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void BtnRegistrar_Click(object sender, EventArgs e)
        {
            centro_medico nuevoCentro = new centro_medico();
            hora_apertura nuevaHora = new hora_apertura();
            hora_cierre nuevaHoraC = new hora_cierre();
            ClsCentroMedico neuvoCentroDAO = new ClsCentroMedico();


            nuevoCentro.nombre = TxtNombre.Text;
            nuevoCentro.direccion = TxtDireccion.Text;
            nuevoCentro.telefonos = TxtTelefono.Text;
            if (FileFoto.HasFile)
            {
                string nombre = FileFoto.FileName;
                string ruta = "~/img/" + nombre;
                FileFoto.SaveAs(Server.MapPath(ruta));
                nuevoCentro.foto = ruta;
            }
          
           
           
            string mensaje =neuvoCentroDAO.registrarCentroMedico(nuevoCentro, nuevaHora, nuevaHoraC);
            LblConfirmar.Text = mensaje;


            



        }
    }
}