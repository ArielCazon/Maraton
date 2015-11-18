using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MaratonWeb.data;

namespace MaratonWeb.Usuario
{
    public partial class AdmiUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int idUsu = int.Parse(Session["UsuarioLogueado"].ToString());


                    MaratonesEntities contexto = new MaratonesEntities();
                    var u = contexto.Usuarios.Where(c => c.IdUsuario == idUsu).First();
                   
                    u.Nombre = txtNombre.Text;
                    u.Apellido = txtApellido.Text;
                    u.FechaNac = DateTime.Parse(txtFecha.Text);
                    u.LugarResidencia = txtLugar.Text; 

                    txtNombre.Text = string.Empty;
                    txtApellido.Text = string.Empty;
                    txtFecha.Text =string.Empty;
                    txtLugar.Text = string.Empty;

                    contexto.Entry(u).State = System.Data.EntityState.Modified;
                    contexto.SaveChanges();
                }
            
        }
    }
