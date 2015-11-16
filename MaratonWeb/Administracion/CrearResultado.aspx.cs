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
                ddlMaraton.Items.Add(new ListItem("Seleccione...", "0"));
                ddlMaraton.DataBind();
                
            }
        }

        protected void txtMaraton_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}