using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MaratonWeb
{
    public partial class Inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MaratonWeb.data.MaratonesEntities dbContext = new  MaratonWeb.data.MaratonesEntities();

            if (dbContext.Maratons.Count() > 0)
            {
                var fecha = (dbContext.Maratons.Max(b => b.FechaHorarioComienzo));
                var qry = (from res in dbContext.ResultadoMaratonParticipantes
                           join mar in dbContext.Maratons on res.IdMaraton equals mar.IdMaraton
                           join use in dbContext.Usuarios on res.IdUsuario equals use.IdUsuario
                           where mar.FechaHorarioComienzo == fecha
                           group mar by new { mar.IdMaraton } into s
                           select new { s.Key.IdMaraton, Count = s.Count() }).OrderByDescending(o => o.Count).First();
                var id = qry.IdMaraton;
                var result = from res in dbContext.ResultadoMaratonParticipantes
                             join mar in dbContext.Maratons on res.IdMaraton equals mar.IdMaraton
                             join use in dbContext.Usuarios on res.IdUsuario equals use.IdUsuario
                             where res.IdMaraton == id
                             select new
                             {
                                 Nombre = use.Nombre,
                                 Apellido = use.Apellido,
                                 LugarResidencia = use.LugarResidencia,
                                 PosicionFinal = res.PosicionFinal,
                                 TiempoLlegada = res.TiempoLlegada,
                                 Finalizo = res.Finalizo
                             };
                GridView1.DataSource = result.ToList();
                GridView1.DataBind();
            }

        }
         
            public override void VerifyRenderingInServerForm(Control control)
        {

        }

    }
}