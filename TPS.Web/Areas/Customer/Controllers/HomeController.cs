using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using TPS.Domain;

namespace TPS.Web.Areas.Customer.Controllers
{
    public class HomeController : CustomerController
    {

        public HomeController(TPSDbContext db, UserManager<IdentityUser> userManager)
            :base(db,userManager)
        {

        }

        public async Task<ActionResult> Index()
        {
            var u = await getUser();
            var c = _db.People
                .OfType<Domain.Customer>()
                .FirstOrDefault(customer => customer.UserId == u.Id);
            if (c == null)
            {
                return NotFound();
            }
            ViewBag.Forename = c.Forename;
            ViewBag.Id = c.Id;
            ViewBag.Surname = c.Surname;
            ViewBag.Email = u.Email;
            return View();

        }
    }
}