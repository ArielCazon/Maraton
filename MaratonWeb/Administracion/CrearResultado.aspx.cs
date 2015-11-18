using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MaratonWeb.data;

namespace MaratonWeb.Administracion
{
    public partial class CrearResultado : System.Web.UI.Page
    {
        MaratonesEntities contexto = new MaratonesEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                var maratonesFinalizadas = contexto.Maratons
                    .Where(x=> x.FechaHorarioComienzo.HasValue 
                    && x.FechaHorarioComienzo.Value < DateTime.Today);

                ddlMaraton.DataSource = maratonesFinalizadas.ToList();
                ddlMaraton.DataValueField = "IdMaraton";
                ddlMaraton.DataTextField = "Nombre";
                ddlMaraton.DataBind();
                ddlMaraton.Items.Insert(0,"Elija Maraton...");
               
                
            }
        }

        protected void ddlMaraton_SelectedIndexChanged(object sender, EventArgs e)
        {
            var maratonElegida = int.Parse(ddlMaraton.SelectedValue);
            var usuariosMaraton = contexto.ResultadoMaratonParticipantes.Where(r => r.IdMaraton == maratonElegida && r.PosicionFinal == null)
                                    .Select(r => r.Usuario).ToList();

            ddlUsuario.DataSource = usuariosMaraton;
            ddlUsuario.DataValueField = "IdUsuario";
            ddlUsuario.DataTextField = "Nombre";
            ddlUsuario.DataBind();
            ddlUsuario.Items.Insert(0, "Elija un usuario...");

        }

        protected void btnCrearResultado_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                var posicion = int.Parse(txtPosicion.Text);                
                var maraton = int.Parse(ddlMaraton.SelectedValue);
                var usuario = int.Parse(ddlUsuario.SelectedValue);

                var posicionCargada = contexto.ResultadoMaratonParticipantes.Where(r=> r.IdMaraton == maraton && r.PosicionFinal == posicion).ToList();
                if (posicionCargada.Count > 0)
                {
                    lblError.Text = "Ya se cargò un usuario para esa posicion.";
                    return;
                }
                var resultado = contexto.ResultadoMaratonParticipantes.First(r => r.IdMaraton == maraton && r.IdUsuario == usuario);

                resultado.PosicionFinal = posicion;
                resultado.TiempoLlegada = int.Parse(txtLlegada.Text);
                resultado.Finalizo = bool.Parse(ddlEstado.SelectedValue);
                contexto.SaveChanges();
            }
        }

    }
}