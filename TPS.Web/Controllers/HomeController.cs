using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;

using TPS.Domain;
using TPS.Web.Models;

namespace TPS.Web.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly TPSDbContext _context;
        private readonly UserManager<IdentityUser> _userManager;

        public HomeController(TPSDbContext context, UserManager<IdentityUser> userManager, ILogger<HomeController> logger)
        {
            _context = context;
            _logger = logger;
            _userManager = userManager;
        }

        public async Task<IActionResult> Index()
        {
            if (User.IsInRole("Customer"))
            {
                return RedirectToAction("Index", "Home", new { area = "Customer" });
            }
            else if (User.IsInRole("Administrator"))
            {
                return RedirectToAction("Index", "TravelPackages", new { area = "Administration" });
            }
            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }

        public async Task<IActionResult> SearchByCity(string cityName)
        {
            return RedirectToAction("SearchByCity", "TravelPackages", new { cityName });
        }
    }
}
