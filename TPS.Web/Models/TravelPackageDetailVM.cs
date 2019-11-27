using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using TPS.Domain;

namespace TPS.Web.Models
{
    public class TravelPackageDetailVM
    {
        public TravelPackage TravelPackage { get; set; }
        public CityAttraction CityAttraction { get; set; }
        public TravelPackageCity TravelPackageCity { get; set; }
    }
}
