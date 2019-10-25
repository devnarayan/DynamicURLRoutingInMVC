using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
namespace DynamicRoutingExample.Controllers
{
    public class AccountController : Controller
    {
        public ActionResult Index()
        {
            var objDataAccess = new DataAccess.Repository();
            var Result = objDataAccess.GetCompanyById(1);
            return View(Result);
        }
        public ActionResult IndexById(int Id)
        {
            var objDataAccess = new DataAccess.Repository();
            var Result = objDataAccess.GetCompanyById(Id);
            return View(Result);
        }
    }
}