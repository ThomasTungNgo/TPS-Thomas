using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;

namespace TPS.Web.Controllers
{
    public class RedirectUserController : Controller
    {
        private readonly UserManager<IdentityUser> _userManager;

        public RedirectUserController(UserManager<IdentityUser> userManager)
        {
            _userManager = userManager;
        }

        public IActionResult Index()
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
    }
}