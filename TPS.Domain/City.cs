using System;
using System.Collections.Generic;
using System.Text;

namespace TPS.Domain
{
    public class City
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string ASCII { get; set; }
        public float Latitude { get; set; }
        public float Longitude { get; set; }
        public string Country { get; set; }
        public string Code { get; set; }
        public List<CityAttraction> Attractions { get; set; } = new List<CityAttraction>();
    }
}
