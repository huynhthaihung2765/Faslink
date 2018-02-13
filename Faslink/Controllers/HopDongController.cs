using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Faslink.Controllers
{
    public class HopDongController : Controller
    {
        // GET: HopDong
        public ActionResult ThemHopDong()
        {
            return View();
        }
        public ActionResult DanhSachHopDong()
        {
            return View();
        }
        public ActionResult SuaHopDong()
        {
            return View();
        }
    }
}