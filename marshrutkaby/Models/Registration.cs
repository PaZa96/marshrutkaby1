﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace marshrutkaby.Models
{
    public class Registration
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Registration()
        {
            this.Order = new HashSet<Order>();
        }

        public int IdPassenger { get; set; }
        public string UserName { get; set; }
        public System.DateTime Birthday { get; set; }
        public string PhoneNumber { get; set; }
        public string Password { get; set; }
        public string Email { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Order> Order { get; set; }
    }
}