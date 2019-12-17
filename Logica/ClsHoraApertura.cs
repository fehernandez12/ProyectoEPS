using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Logica
{
    public class ClsHoraApertura
    {
        OrmEpsDataContext db = new OrmEpsDataContext();

        public hora_apertura consultarNombre(TimeSpan tiempo) { 
        
            var consulta = (from e in db.hora_apertura where e.hora_apertura1 == tiempo select e).FirstOrDefault();
            return consulta;
            }
        
        
        
        
    }
}
