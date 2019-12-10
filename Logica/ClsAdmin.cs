using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Logica
{
    public class ClsAdmin
    {
        OrmEpsDataContext db = new OrmEpsDataContext();
        public administrador loginAdmin(int cedula, string password)
        {
            administrador adminLogin = new administrador();
            var consulta = from administrador in db.sp_login_admin(cedula, password) select administrador;
            foreach (var item in consulta)
            {
                adminLogin.idAdministrador = item.idAdministrador;
                adminLogin.password = item.password;
                adminLogin.usuario_cedula = item.usuario_cedula;
            }
            return adminLogin;
        }
    }
}
