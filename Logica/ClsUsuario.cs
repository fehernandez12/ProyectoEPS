using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Logica
{
    public class ClsUsuario
    {
        OrmEpsDataContext db = new OrmEpsDataContext();
        public usuario loginUsuario(int cedula)
        {
            usuario uLogin = new usuario();
            var consulta = from usuario in db.sp_login_usuario(cedula) select usuario;
            foreach (var item in consulta)
            {
                uLogin.cedula = item.cedula;
                uLogin.nombre = item.nombre;
                uLogin.apellido = item.apellido;
                uLogin.direccion = item.direccion;
                uLogin.telefono = item.telefono;
                uLogin.email = item.email;
                uLogin.idEps = item.idEps;
            }
            return uLogin;
        }

        public string registrarUsuario(usuario usuario)
        {
            string mensaje;
            try
            {
                db.usuario.InsertOnSubmit(usuario);
                db.SubmitChanges();
                mensaje = "El usuario ha si do registrado exitosamente.";
            }
            catch (Exception ex)
            {
                mensaje = "Error: " + ex.Message;
            }
            return mensaje;
        }

        public string actualizarUsuario(usuario usu)
        {
            string mensaje;
            usuario usuario = new usuario();
            try
            {
                var consulta = (from usua in db.usuario where usua.cedula == usu.cedula select usua).FirstOrDefault();
                consulta.nombre = usu.nombre;
                consulta.apellido = usu.apellido;
                consulta.direccion = usu.direccion;
                consulta.telefono = usu.telefono;
                consulta.email = usu.email;
                consulta.idEps = usu.idEps;
                db.SubmitChanges();
                mensaje = "El usuario ha sido actualizado exitosamente.";
            }
            catch (Exception ex)
            {
                mensaje = "Error: " + ex.Message;
            }
            return mensaje;
        }

        public usuario consultarId(int cedula)
        {
            var consulta = (from u in db.usuario where u.cedula == cedula select u).FirstOrDefault();
            return consulta;
        }

        public List<usuario> listarTodos()
        {
            var consulta = (from u in db.usuario select u).ToList();
            return consulta;
        }

        public string eliminarUsuario(int cedula)
        {
            string mensaje;
            try
            {
                var consulta = (from u in db.usuario where u.cedula == cedula select u).FirstOrDefault();
                db.usuario.DeleteOnSubmit(consulta);
                mensaje = "El usuario ha sido eliminado exitosamente.";
            }
            catch (Exception ex)
            {
                mensaje = "Error: " + ex.Message;
            }
            return mensaje;
        }
    }
}
