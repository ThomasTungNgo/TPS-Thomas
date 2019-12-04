﻿using System;
using System.Collections.Generic;
using System.Text;

namespace TPS.Domain
{
    public class CityAttraction
    {

        public int Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }

        public City City { get; set; }
        public int CityId { get; set; }
        public string CityName { get; set; }

        public List<TravelPackageCityAttraction> TravelPackageCityAttractions { get; set; } = new List<TravelPackageCityAttraction>();

    }
}
