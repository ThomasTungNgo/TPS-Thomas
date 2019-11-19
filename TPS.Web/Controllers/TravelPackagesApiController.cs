using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace TPS.Web.Api
{
    [Route("api/packages")]
    [ApiController]
    public class TravelPackagesApiController : ControllerBase
    { 
        public TravelPackagesApiController()
        {

        }

        [HttpGet]
        public List<object> Get()
        {
            var result = new List<object>();
            result.Add(new { Width = 2, Height = 4 });
            result.Add(new { Name = "Fred", Age = 40 });
            return result; 
        }
    }
}