using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MaratonWeb.data;

namespace MaratonWeb
{
    public partial class CrearMaraton : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCrearMaraton_Click(object sender, EventArgs e)
        {

            if (Page.IsValid)
            {

                // usuario = Session["UserLogueado"].ToString();
                // user = int.Parse(usuario);
                // var maratonesPorUsuario = MaratonesEntities.MaratonResultado.Where(x=> x.IdUsuario = user);
                Maraton maraton = new Maraton()
                {
                    LugarSalida = txtLugarSalida.Text,
                    MaxParticipantes = int.Parse(txtMaximoParticipantes.Text),
                    FechaHorarioComienzo = DateTime.Parse(txtFechaSalida.Text),
                    Nombre = txtNombre.Text,
                    ParticipantesEnEspera = int.Parse(txtListaEspera.Text),
                    PrimerPremio = int.Parse(ddlPremio1.SelectedValue),
                    SegundoPremio = int.Parse(ddlPremio2.SelectedValue),
                    TercerPremio = int.Parse(ddlPremio3.SelectedValue),
                    
                };

                MaratonesEntities entities = new MaratonesEntities();
                entities.Maratons.Add(maraton);
                entities.SaveChanges();
            }

        }
    }
}