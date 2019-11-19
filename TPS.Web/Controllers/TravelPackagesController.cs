using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using TPS.Domain;

namespace TPS.Web.Controllers
{
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

        // GET: TravelPackages/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var travelPackage = await _context.TravelPackages
                .FirstOrDefaultAsync(m => m.Id == id);
            if (travelPackage == null)
            {
                return NotFound();
            }

            return View(travelPackage);
        }


               private bool TravelPackageExists(int id)
        {
            return _context.TravelPackages.Any(e => e.Id == id);
        }
    }
}
