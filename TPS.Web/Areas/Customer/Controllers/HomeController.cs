using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using TPS.Domain;

namespace TPS.Web.Areas.Customer.Controllers
{
    public class HomeController : CustomerController
    {

        public HomeController(TPSDbContext context, UserManager<IdentityUser> userManager)
            :base(context,userManager)
        {

        }

        public async Task<ActionResult> Index(int? id)
        {
            var u = await getUser();
            var c = _db.People
                .OfType<Domain.Customer>()
                .FirstOrDefault(customer => customer.UserId == u.Id);

            var cp = _db.CustomerTravelPackages
                .Where(cp => cp.CustomerId == id)
                .ToList();

            if (c == null)
            {
                return NotFound();
            }
            ViewBag.Forename = c.Forename;
            ViewBag.Id = c.Id;
            ViewBag.Surname = c.Surname;
            ViewBag.Email = u.Email;
            ViewBag.Package = cp;
            return View();
        }

        public async Task<IActionResult> AddTravelPackage(int id)
        {
            var user = await _userManager.GetUserAsync(HttpContext.User);
            var customer = _db.People
                .OfType<Domain.Customer>()
                .FirstOrDefault(cust => cust.Id.ToString() == user.Id);

            var package = _db.TravelPackages.FirstOrDefault(tp => tp.Id == id);

            var cp = new CustomerTravelPackage { TravelPackage = package , Customer = customer};
            _db.CustomerTravelPackages.Add(cp);
            //await _db.SaveChangesAsync(cp);

            return RedirectToAction("Index", "Home", new { area = "Customer" });

        }

        public async Task<IActionResult> Pay()
        {
            return View();
        }

        [HttpGet]
        public async Task<IActionResult> Comment(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }
            var travelPackage = await _db.TravelPackages.FirstOrDefaultAsync(tp => tp.Id == id);
            return View(travelPackage);
        }


        [HttpPost]
        public async Task<IActionResult> Comment(int id, TravelPackage travelPackage)
        {
            if(ModelState.IsValid)
            {
                _db.Update(travelPackage);
                await _db.SaveChangesAsync();
                return RedirectToAction("Index", "Home" , new { area = "" });
            }
            return NotFound();
        }
    }
}