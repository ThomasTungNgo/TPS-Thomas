using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using TPS.Domain;

namespace TPS.Web.Areas.Administration.Controllers
{
    [Authorize(Roles ="Administrator")]
    [Area("Administration")]
    public class AdministrationController : Controller
    {

        protected readonly TPSDbContext _db;
        protected readonly UserManager<IdentityUser> _userManager;
        protected async Task<IdentityUser> getUser() => await _userManager.GetUserAsync(User);
         
        public AdministrationController(TPSDbContext context, UserManager<IdentityUser> userManager)
        {
            _db = context;
            _userManager = userManager;
        }
    }
}