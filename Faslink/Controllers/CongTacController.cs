using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Faslink.Controllers
{
    public class CongTacController : Controller
    {
        // GET: CongTac
        public ActionResult ThemCongTac()
        {
            return View();
        }
        public ActionResult SuaCongTac()
        {
            return View();
        }
        public ActionResult DanhSachCongTac()
        {
            return View();
        }
        public ActionResult DonChuyenCongTac()
        {
            return View();
        }
    }
}