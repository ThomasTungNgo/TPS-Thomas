﻿using System;
using System.Collections.Generic;
using System.Text;

namespace TPS.Domain
{
    public class TravelPackageCityAttraction
    {
        public int Id { get; set; }
        public int TravelPackageCityId { get; set; }
        public TravelPackageCity TravelPackageCity { get; set; }

        public int CityAttractionId { get; set; }
        public CityAttraction CityAttraction { get; set; }
    }
}
