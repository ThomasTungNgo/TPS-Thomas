using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using TPS.Domain;
using TPS.Web.Models;

namespace TPS.Web.Api
{
    [Route("api/packages")]
    [ApiController]
    public class TravelPackagesApiController : ControllerBase
    {
        private readonly TPSDbContext _context;

        public TravelPackagesApiController(TPSDbContext context)
        {
            _context = context;
        }

        [HttpGet]
        public IEnumerable<TravelPackage> Get()
        {
            var result = _context.TravelPackages.ToList();
            return result; 
        }

        // POST api/packages/"name"
        [HttpGet("{cityName}")]
        public IEnumerable<PackageApiVM> GetPackagesByLocation(string cityName)
        {
            var result = _context.TravelPackageCities
                .Where(tpc => tpc.City.Name == cityName)
                .Select(tpc => new PackageApiVM
                {
                    PackageName = tpc.TravelPackage.Name,
                    CityName = tpc.City.Name
                }).ToList();
            return result;
        }

        //[HttpGet]
        //public List<TravelPackage> GetByLocation(string cityName)
        //{
        //    var result = _context.TravelPackages.ToList();
        //    return result;
        //}
    }
}