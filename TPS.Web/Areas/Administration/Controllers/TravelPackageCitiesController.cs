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
    [Area("Administration")]
    public class TravelPackageCitiesController : AdministrationController
    {
        public TravelPackageCitiesController(TPSDbContext db, UserManager<IdentityUser> userManager)
            : base(db, userManager)
        {

        }
        // GET: Administration/TravelPackageCities
        public async Task<IActionResult> Index(int tpId)
        {

            ViewBag.TravelPackage = _db.TravelPackages.First(tp => tp.Id == tpId);
            var tPSDbContext = _db.TravelPackageCities
                .Include(t => t.City)
                .Include(t => t.TravelPackage)
                .Where(t=>t.TravelPackageId == tpId);
            return View(await tPSDbContext.ToListAsync());
        }


        // GET: Administration/TravelPackageCities/Create
        public IActionResult Create(int tpId, int? page)
        {
            var pageNumber = page ?? 0;
            if(pageNumber < 0) { pageNumber = 0; } 
            ViewBag.PageNumber = pageNumber;
            int skip = (page ?? 1) * 100;           
            //ViewBag.Cities = _db.Cities.Skip(skip).Take(100).ToList();
            ViewBag.Cities = _db.Cities.OrderBy(c=>c.Name).ToList();
            ViewBag.TravelPackage = _db.TravelPackages.First(tp => tp.Id == tpId); 
            return View();
        }

        // POST: Administration/TravelPackageCities/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("TravelPackageId,CityId,NumberOfDays")] TravelPackageCity travelPackageCity)
        {
            if (ModelState.IsValid)
            {
                _db.Add(travelPackageCity);
                await _db.SaveChangesAsync();
                return RedirectToAction(nameof(Index),new { tpId = travelPackageCity.TravelPackageId });
            }
            ViewData["CityId"] = new SelectList(_db.Cities, "Id", "ASCII", travelPackageCity.CityId);
            ViewData["TravelPackageId"] = new SelectList(_db.TravelPackages, "Id", "Description", travelPackageCity.TravelPackageId);
            return View(travelPackageCity);
        }


    }
}
