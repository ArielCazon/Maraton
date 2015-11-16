using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MaratonWeb.data;

namespace MaratonWeb.Administracion
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                var contexto = new MaratonesEntities();

                var usuario = contexto.Usuarios.FirstOrDefault(x => x.Email == txtEmail.Text);
                if (usuario != null)
                {
                    if (usuario.Contrasenia == txtPassword.Text)
                    {
                        Session["UsuarioLogueado"] = usuario.IdUsuario;
                        Session["UsuarioAdmin"] = usuario.Admin;
                        Response.Redirect("CrearMaraton.aspx");
                    }
                    else 
                    {
                        lblError.Text = "La contraseña es incorrecta.";
                    }
                }
                else 
                {
                    lblError.Text = "El Usuario no existe.";
                }
            }
        }
    }
}