//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace marshrutkaby
{
    using System;
    using System.Collections.Generic;
    
    public partial class Cars
    {
        public int IdCar { get; set; }
        public string Color { get; set; }
        public string NumberPlate { get; set; }
        public string Services { get; set; }
        public string NumberOfSeats { get; set; }
        public int TransportCompanyIdTransportCompany { get; set; }
    
        public virtual TransportCompany TransportCompany { get; set; }
    }
}
