using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace TPS.Domain
{
    public enum TravelPackageStatus { Draft = 1, Active = 2, Cancelled = 3 }
    public enum TravelPackageIntensity { Chill = 1, Active = 2, Explorer = 3 }

    public class TravelPackage
    {
        public List<TravelPackageCity> Cities { get; set; } = new List<TravelPackageCity>();
        public int Id { get; set; }

        [Display(Name = "Tour Name")]
        public string Name { get; set; }

        [Display(Name = "Tour Description")]
        public string Description { get; set; }
        public int StatusId { get; private set; }

        public int IntensityId { get; private set; }

        [MaxLength(10, ErrorMessage = "Your comment must be under 10 char")]
        public string Comment { get; set; }

        [Range(1, 5, ErrorMessage = "Rating must be between 1 and 5")]
        public int Rating { get; set; }

        public TravelPackageStatus Status { get => (TravelPackageStatus)StatusId; }

        [Range(1, 3, ErrorMessage = "Pick intensity between 1 and 3")]
        [Display(Name = "Tour Intensity")]
        public TravelPackageIntensity Intensity { get => (TravelPackageIntensity)IntensityId; }

        //recommended retail price
        public decimal RRP { get; set; }
        public int DurationDay { get; set; }
        public int DurationNight { get; set; }



        public TravelPackageCity AddCity(City c,int days, params CityAttraction[] attractions)
        {
            var tpc = new TravelPackageCity
            {
                 City = c,
                 NumberOfDays = days,
                 TravelPackage = this
            };
            Cities.Add(tpc);

            if(attractions != null)
            {
                foreach(var a in attractions)
                {
                    tpc.AddAttraction(a);
                }
            }
            return tpc;
        }


    }
}
