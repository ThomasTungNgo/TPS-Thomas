using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using TPS.Domain;
using TPS.Web.Areas.Administration.Models;

namespace TPS.Web.Areas.Administration.Controllers
{
    [Area("Administration")]
    public class TravelPackagesController : AdministrationController
    {
        public TravelPackagesController(TPSDbContext context, UserManager<IdentityUser> userManager)
            :base(context,userManager)
        {
           
        }

        // GET: Administration/TravelPackages
        public async Task<IActionResult> Index()
        {
            return View(await _db.TravelPackages.ToListAsync());
        }

        // GET: Administration/TravelPackages/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var travelPackage = await _db.TravelPackages
                .FirstOrDefaultAsync(m => m.Id == id);
            if (travelPackage == null)
            {
                return NotFound();
            }

            return View(travelPackage);
        }

        // GET: Administration/TravelPackages/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Administration/TravelPackages/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,Name,Description,StatusId,RRP")] TravelPackage travelPackage)
        {
            if (ModelState.IsValid)
            {
                _db.Add(travelPackage);
                await _db.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(travelPackage);
        }

        // GET: Administration/TravelPackages/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var travelPackage = await _db.TravelPackages
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
                    _db.Update(travelPackage);
                    await _db.SaveChangesAsync();
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

        // GET: Administration/TravelPackages/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var travelPackage = await _db.TravelPackages
                .FirstOrDefaultAsync(m => m.Id == id);
            if (travelPackage == null)
            {
                return NotFound();
            }

            return View(travelPackage);
        }

        // POST: Administration/TravelPackages/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var travelPackage = await _db.TravelPackages.FindAsync(id);
            _db.TravelPackages.Remove(travelPackage);
            await _db.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool TravelPackageExists(int id)
        {
            return _db.TravelPackages.Any(e => e.Id == id);
        }
    }
}
