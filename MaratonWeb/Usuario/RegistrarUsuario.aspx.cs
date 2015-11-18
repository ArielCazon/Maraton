using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MaratonWeb.data;

namespace MaratonWeb.Usuario
{
    public partial class RegistrarUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void btnRegistrarUsuario_Click(object sender, EventArgs e)
        {

            if (Page.IsValid)
            {
                MaratonesEntities contexto = new MaratonesEntities();
                var u = new MaratonWeb.data.Usuario();
                u.Email = txtEmail.Text;
                u.Contrasenia = txtContrasenia.Text;
                u.Nombre = txtNombre.Text;
                u.Apellido = txtApellido.Text;
                u.FechaNac = DateTime.Parse(txtFecha.Text);
                u.LugarResidencia = txtLugar.Text;
                contexto.Usuarios.Add(u);
                contexto.SaveChanges();
                lblOk.Visible = true;
                lblOk.Text = "El usuario '" + u.Nombre + " " + u.Apellido + "'" + " fue creado con éxito";
                Session["UsuarioLogueado"] = u.IdUsuario;
                txtEmail.Text = string.Empty;
                txtContrasenia.Text = string.Empty;
                txtNombre.Text = string.Empty;
                txtApellido.Text = string.Empty;
                txtFecha.Text = string.Empty;
                txtLugar.Text = string.Empty;

                int idUsuarioLogueado = int.Parse(Session["UsuarioLogueado"].ToString());
                Response.Redirect("../Usuario/AdmiUsuario.aspx?idU=" + idUsuarioLogueado);
            }
            
        }

    }
}                               