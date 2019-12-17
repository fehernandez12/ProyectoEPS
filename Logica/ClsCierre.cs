using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Logica
{
    public class ClsCierre
    {
        OrmEpsDataContext db = new OrmEpsDataContext();
        public hora_cierre consultarCierre(TimeSpan cierre) {

            var consulta = (from e in db.hora_cierre where e.hora_cierre1 == cierre select e).FirstOrDefault();
            return consulta;
        
        }
    }
}
