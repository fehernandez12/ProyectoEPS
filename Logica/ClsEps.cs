using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Logica
{
    public class ClsEps
    {
        OrmEpsDataContext db = new OrmEpsDataContext();
        public eps loginEps(string nit, string password)
        {
            eps epsLogin = new eps();
            var consulta = from eps in db.sp_login_eps(nit, password) select eps;
            foreach (var item in consulta)
            {
                epsLogin.idEps = item.idEps;
                epsLogin.nombre = item.nombre;
                epsLogin.nit = item.nit;
                epsLogin.direccion = item.direccion;
                epsLogin.telefono = item.telefono;
                epsLogin.password = item.password;
                epsLogin.estado_eps_idEstado_eps = item.estado_eps_idEstado_eps;
            }
            return epsLogin;
        }

        public string registrarEps(eps eps)
        {
            string mensaje;
            try
            {
                db.eps.InsertOnSubmit(eps);
                db.SubmitChanges();
                mensaje = "La EPS ha sido registrada exitosamente.";
            }
            catch (Exception ex)
            {
                mensaje = "Error: " + ex.Message;
            }
            return mensaje;
        }

        public Logica.eps consultarNombre(string nombre)
        {
            var consulta = (from e in db.eps where e.nombre == nombre select e).FirstOrDefault();
            return consulta;
        }

        public Logica.eps consultarId(int id)
        {
            var consulta = (from e in db.eps where e.idEps == id select e).FirstOrDefault();
            return consulta;
        }

        public List<Logica.eps> listarTodas()
        {
            var consulta = (from e in db.eps select e).ToList();
            return consulta;
        }
    }
}
