using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using TPS.Domain;

namespace TPS.Web.Areas.Administration.Models
{
    public class TravelPackageVM
    {
        public TravelPackage TravelPackage { get; set; }
        public TravelPackageCityAttraction CityAttraction { get; set; }
        public TravelPackageCity TravelPackageCity { get; set; }
    }
}
