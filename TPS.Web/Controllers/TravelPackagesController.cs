using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using TPS.Domain;
using TPS.Web.Models;

namespace TPS.Web.Controllers
{
    [Route("[controller]/[action]")]
    public class TravelPackagesController : Controller
    {
        private readonly TPSDbContext _context;

        public TravelPackagesController(TPSDbContext context)
        {
            _context = context;
        }

        // GET: TravelPackages
        public async Task<IActionResult> Index()
        {
            return View(await _context.TravelPackages.ToListAsync());
        }

        [HttpGet]
        [Route("{cityName}")]   
        public async Task<IActionResult> SearchByCity(string cityName)
        {
            var result = await _context.TravelPackages
                .Include(tp=>tp.Cities)
                    .ThenInclude(tpc=>tpc.City)
                .Where(tp => tp.Cities.Any(tpc=>tpc.City.Name.Contains(cityName)))
                .ToListAsync();

            return View("Index", result);
        }


        // GET: TravelPackages/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            var result = await _context.TravelPackages
                .Include(tp => tp.Cities)
                    .ThenInclude(tpc => tpc.City)
                .Include(tp => tp.Cities)
                    .ThenInclude(tpc => tpc.TravelPackageCityAttractions)
                    .ThenInclude(tpca => tpca.CityAttraction)
                .FirstOrDefaultAsync(tp => tp.Id == id);

            if(result == null)
            {
                return NotFound();
            }

            return View(result);
        }

        // GET: Administration/TravelPackages/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var travelPackage = await _context.TravelPackages
               .Include(tp => tp.Cities)
                   .ThenInclude(tpc => tpc.City)
               .Include(tp => tp.Cities)
                   .ThenInclude(tpc => tpc.TravelPackageCityAttractions)
                   .ThenInclude(tpca => tpca.CityAttraction)
               .FirstOrDefaultAsync(tp => tp.Id == id);

            if (travelPackage == null)
            {
                return NotFound();
            }
            return View(travelPackage);
        }

        // POST: Administration/TravelPackages/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,Name,Description,StatusId,RRP")] TravelPackage travelPackage)
        {
            if (id != travelPackage.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(travelPackage);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!TravelPackageExists(travelPackage.Id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            return View(travelPackage);
        }


        private bool TravelPackageExists(int id)
        {
            return _context.TravelPackages.Any(e => e.Id == id);
        }
    }
}
