//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MaratonWeb.data
{
    using System;
    using System.Collections.Generic;
    
    public partial class ResultadoMaratonParticipante
    {
        public int IdUsuario { get; set; }
        public int IdMaraton { get; set; }
        public int NroInscripcion { get; set; }
        public Nullable<int> PosicionFinal { get; set; }
        public Nullable<int> TiempoLlegada { get; set; }
        public Nullable<bool> Finalizo { get; set; }
    
        public virtual Maraton Maraton { get; set; }
        public virtual Usuario Usuario { get; set; }
    }
}