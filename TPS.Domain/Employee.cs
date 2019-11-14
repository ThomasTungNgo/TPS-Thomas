using System;
using System.Collections.Generic;
using System.Text;

namespace TPS.Domain
{
    public class Employee : Person
    {
        public int TravelProviderId { get; set; }
        public TravelProvider TravelProvider { get; set; }
    }
}
