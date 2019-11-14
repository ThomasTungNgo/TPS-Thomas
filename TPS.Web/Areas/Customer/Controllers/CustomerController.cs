using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using TPS.Domain;

namespace TPS.Web.Areas.Customer.Controllers
{
    [Authorize(Roles = "Customer")]
    [Area("Customer")]
    public class CustomerController : Controller
    {

        protected readonly TPSDbContext _db;
        protected readonly UserManager<IdentityUser> _userManager;
        protected async Task<IdentityUser> getUser() => await _userManager.GetUserAsync(User);

        public CustomerController(TPSDbContext db, UserManager<IdentityUser> userManager)
        {
            _db = db;
            _userManager = userManager;
        }

  
    }
}