using Faslink.Models;
using Faslink.Models.Database;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Faslink.Controllers
{
    public class NghiPhepController : Controller
    {
        // GET: NghiPhep
        public ActionResult TaoDonNghiPhep()
        {
            return View();
        }
        public ActionResult DanhSachDonNghiPhep()
        {
            return View();
        }
        public ActionResult SuaDonNghiPhep()
        {
            return View();
        }
      
    }
}