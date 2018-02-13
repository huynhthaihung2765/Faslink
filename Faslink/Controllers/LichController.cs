using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Faslink.Controllers
{
    public class LichController : Controller
    {
        // GET: Lich
        public ActionResult DanhSachLich()
        {
            return View();
        }
        public ActionResult TaoLichLamViec()
        {
            return View();
        }
        public ActionResult SuaLichLamViec()
        {
            return View();
        }
    }
}