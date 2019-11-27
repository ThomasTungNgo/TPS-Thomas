using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using TPS.Domain;

namespace TPS.Web.Areas.Administration.Controllers
{
    public class TravelPackageCityAttractionsController : AdministrationController
    {

        public TravelPackageCityAttractionsController(TPSDbContext db, UserManager<IdentityUser> userManager)
          : base(db, userManager)
        {

        }
        //tpcId = travel package city id
        public IActionResult Index(int tpcId)
        {

            ViewBag.City = _db.TravelPackageCities
                .Include(tpc=>tpc.TravelPackage)
                 .Include(tpc => tpc.City)
                .First(tpc => tpc.Id == tpcId); 


            var attractions = _db.TravelPackageCityAttractions
                .Include(tpca => tpca.CityAttraction)
                    .ThenInclude(ca => ca.City)
                .Include(tpca => tpca.TravelPackageCity)
                    .ThenInclude(tpc => tpc.TravelPackage)
                .Where(tpca => tpca.TravelPackageCityId == tpcId)
                .ToList(); 
               
            return View(attractions);
        }
    
    
    
        public IActionResult Create(int tpcId)
        {
           var travelPackageCity = _db.TravelPackageCities
            .Include(tpc => tpc.TravelPackage)
            .Include(tpc => tpc.City)
            .First(tpc => tpc.Id == tpcId);

            ViewBag.TravelPackageCity = travelPackageCity;

            var attractions = _db.CityAttractions
                .Where(ca => ca.CityId == travelPackageCity.CityId)
                .ToArray();

            return View(attractions); 


        }


        [HttpPost]
        public IActionResult Create(TravelPackageCityAttraction m)
        {
            var tpca = new TravelPackageCityAttraction
            {
                 CityAttractionId = m.CityAttractionId,
                  TravelPackageCityId = m.TravelPackageCityId
            };
            _db.TravelPackageCityAttractions.Add(tpca);
            _db.SaveChanges();
            return RedirectToAction(nameof(Index), new { tpcId = m.TravelPackageCityId }); 

        }



    }
}