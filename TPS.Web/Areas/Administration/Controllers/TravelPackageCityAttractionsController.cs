using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
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
    
        [HttpGet]
        public IActionResult CreateFromList(int tpcId)
        {
           var travelPackageCity = _db.TravelPackageCities
            .Include(tpc => tpc.TravelPackage)
            .Include(tpc => tpc.City)
            .First(tpc => tpc.Id == tpcId);

            ViewBag.TravelPackageCity = travelPackageCity;

            var attractions = _db.CityAttractions
                .Where(ca => ca.CityId == travelPackageCity.CityId)
                .ToList();

            return View(attractions); 
        }


        [HttpPost]
        public IActionResult CreateFromList(TravelPackageCityAttraction m)
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

        [HttpGet]
        public async Task<IActionResult> Create(int cityId)
        {
            var ca = _db.CityAttractions
                .First(ca => ca.City.Id == cityId);

            return View(ca);
        }       

        [HttpPost]
        public async Task<IActionResult> Create(TravelPackageCityAttraction model)
        {
            if (ModelState.IsValid)
            {
                var tpca = new TravelPackageCityAttraction
                {
                    CityAttractionId = model.CityAttractionId,
                    TravelPackageCityId = model.TravelPackageCityId
                };
                _db.TravelPackageCityAttractions.Add(tpca);
                _db.SaveChanges();
                return RedirectToAction(nameof(Index), new { tpcId = model.TravelPackageCityId});
            }
            return View(model);
        }

        public async Task<IActionResult> Remove(int? id)
        {
            var tpca = await _db.TravelPackageCityAttractions.FindAsync(id);
            _db.TravelPackageCityAttractions.Remove(tpca);
            await _db.SaveChangesAsync();
            return RedirectToAction(nameof(Index), new { tpcId = tpca.TravelPackageCityId });
        }
    }
}