using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Logica
{
   public class ClsCentroMedico
    {
        OrmEpsDataContext db = new OrmEpsDataContext();
        public string registrarCentroMedico(centro_medico nuevoCentro,hora_apertura nuevaHoraA,hora_cierre nuevaHoraC) {

            string mensaje;
            try
            {
                db.centro_medico.InsertOnSubmit(nuevoCentro);
                db.SubmitChanges();
                mensaje = "El registro a sido exitoso";

                
            }
            catch (Exception e) { 
                 mensaje="Error tipo bd el cual es:"+e;
            
            }
            return mensaje;

            
        }
    }
}
