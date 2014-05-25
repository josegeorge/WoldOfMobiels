using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Mobiles_WebUI.Models;
using Mobiles_WebUI.Repositories;

namespace Mobiles_WebUI.Controllers
{
    public class BrandsController : Controller
    {
        private readonly IRepository<Brand> _repository = new Repository<Brand>();


        public ActionResult Index()
        {
            return View(_repository.GetAll());
        }

    }
}
