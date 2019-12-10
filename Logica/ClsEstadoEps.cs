using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Logica
{
    public class ClsEstadoEps
    {
        OrmEpsDataContext db = new OrmEpsDataContext();
        public estado_eps consultarNombre(string nombre)
        {
            var consulta = (from e in db.estado_eps where e.estado_eps1 == nombre select e).FirstOrDefault();
            return consulta;
        }

        public estado_eps consultarId(int id)
        {
            var consulta = (from e in db.estado_eps where e.idEstado_eps == id select e).FirstOrDefault();
            return consulta;
        }

        public List<estado_eps> listarTodas()
        {
            var consulta = (from e in db.estado_eps select e).ToList();
            return consulta;
        }
    }
}
