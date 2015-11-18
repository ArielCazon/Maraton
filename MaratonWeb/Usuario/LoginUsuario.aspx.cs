using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MaratonWeb.data;

namespace MaratonWeb.Usuario
{
    public partial class LoginUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresarUsuario_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                var contexto = new MaratonesEntities();

                var usuario = contexto.Usuarios.FirstOrDefault(x => x.Email == txtEmail.Text);
                if (usuario == null)
                {
                    lblError.Text = "El usuario no existe.";
                    return;
                }
                if (usuario.Admin)
                {
                    lblError.Text = "El Usuario ingresado es Administrador.";
                    return;
                }
                if (txtPassword.Text != usuario.Contrasenia)
                {
                    lblError.Text = "La contraseña es incorrecta.";
                }
                Session["UsuarioLogueado"] = usuario.IdUsuario;
                Session["UsuarioAdmin"] = usuario.Admin;
                Response.Redirect("Historial.aspx");
            }
        }
    }
}
