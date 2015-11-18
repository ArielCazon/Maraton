using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using MaratonWeb.data;


namespace MaratonWeb.Servicios
{
    /// <summary>
    /// Descripción breve de servicio
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
    [System.Web.Script.Services.ScriptService]
    public class servicio : System.Web.Services.WebService
    {
        [WebMethod(EnableSession = true)]
        public List<MaratonDTO> ObtenerMaratonesRealizados()
        {
            var maratonesDTO = new List<MaratonDTO>();
            int idUsuarioLogueado = int.Parse(Session["UsuarioLogueado"].ToString());

            var entities = new MaratonesEntities();
            var maratonesRealizados = entities.ResultadoMaratonParticipantes.Where(x => x.IdUsuario == idUsuarioLogueado && x.PosicionFinal != null && x.TiempoLlegada != null);

            foreach (var resultado in maratonesRealizados)
            {
                var DTO = ConvertToDTO(resultado);
                maratonesDTO.Add(DTO);
            }
            return maratonesDTO;
        }

        private MaratonDTO ConvertToDTO(ResultadoMaratonParticipante resultado)
        {
            string premio = string.Empty;
            if (resultado.PosicionFinal == 1)
                premio = resultado.Maraton.PrimerPremio.ToString();
            if (resultado.PosicionFinal == 2)
                premio = resultado.Maraton.SegundoPremio.ToString();
            if (resultado.PosicionFinal == 3)
                premio = resultado.Maraton.TercerPremio.ToString();

            return new MaratonDTO()
            {
                Posicion = resultado.PosicionFinal.ToString(),
                Premio = premio,
                Tiempo = resultado.TiempoLlegada.ToString(),
            };
        }
    }
}
