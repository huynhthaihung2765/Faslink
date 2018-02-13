using Faslink.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Xml.Linq;
using Newtonsoft.Json;
using Faslink.Models.Database;
using System.Net;

namespace Faslink.Controllers
{
    public class NhanVienController : Controller
    {
        private FaslinkEntities db = new FaslinkEntities();
        // GET: NhanVien
        public ActionResult ThemNhanVien()
        {

            return View();
        }
        [HttpPost]
        public ActionResult ThemNhanVien(FormCollection collection)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    int idNhanVien = Int32.Parse(collection["idNhanVien"].ToString());
                    bool trangThai = true;
                    DateTime ngayNghi = new DateTime(01 / 01 / 0001);
                    DateTime ngayVao;
                    if (collection["ngayVao"] == null || collection["ngayVao"] == "")
                    {
                        ngayVao = new DateTime(01 / 01 / 0001);
                    }
                    else
                    {
                        ngayVao = DateTime.Parse(collection["ngayVao"]);
                    }
                    DateTime ngaySinh;
                    if (collection["ngaySinh"] == null || collection["ngaySinh"] == "")
                    {
                        ngaySinh = new DateTime(01 / 01 / 0001);
                    }
                    else
                    {
                        ngaySinh = DateTime.Parse(collection["ngaySinh"]);
                    }
                    DateTime ngayCap;
                    if (collection["ngayCap"] == null || collection["ngayCap"] == "")
                    {
                        ngayCap = new DateTime(01 / 01 / 0001);
                    }
                    else
                    {
                        ngayCap = DateTime.Parse(collection["ngayCap"]);
                    }
                    db.ThemNhanVien(
                    idNhanVien,
                    collection["hoTen"],
                    Int32.Parse(collection["idGioiTinh"]),
                    ngayVao,
                    ngaySinh,
                    collection["noiSinh"],
                    collection["honNhan"],
                    collection["dienThoai"],
                    collection["dienThoaiNguoiThan"],
                    collection["emailCTy"],
                    collection["emailCaNhan"],
                    collection["quocTich"],
                    collection["tonGiao"],
                    collection["danToc"],
                    collection["hinh"],
                    Int32.Parse(collection["soNguoiPhuThuoc"].ToString()),
                    trangThai,
                    Int32.Parse(collection["mvt"].ToString()),
                    collection["ka"],
                    collection["toLamViec"],
                    ngayNghi,
                    collection["nguoiGioiThieu"],
                    collection["soCMND"],
                    ngayCap,
                    collection["noiCap"],
                    collection["nguyenQuan"]
                    );
                    int idNhanVienBangBoPhan = idNhanVien;
                    DateTime ngayThayDoi = new DateTime(01 / 01 / 0001);
                    int idBoPhan = Int32.Parse(collection["idBoPhan"].ToString());
                    db.ThemLogBoPhan(
                        ngayThayDoi,
                        idNhanVienBangBoPhan,
                        idBoPhan
                        );
                    int idNhanVienBangTrinhDo = idNhanVien;
                    DateTime thoiGianTrinhDo = new DateTime(01 / 01 / 0001);
                    db.ThemTrinhDo(
                        collection["hocVan"],
                        collection["truongHoc"],
                        collection["chuyenMon"],
                        collection["ngoaiNgu"],
                        collection["viTinh"],
                        thoiGianTrinhDo,
                        idNhanVienBangTrinhDo
                        );
                    int idNhanVienBangDiaChiThuongTru = idNhanVien;
                    bool trangThaiDiaChiThuongTru = true;
                    db.ThemDiaChiThuongTru(
                        Int32.Parse(collection["idTinh_TP"].ToString()),
                        collection["soNhaDuong"],
                        trangThaiDiaChiThuongTru,
                        idNhanVienBangDiaChiThuongTru,
                        Int32.Parse(collection["idQuan_Huyen"].ToString())
                        );
                    int idNhanVienBangDiaChiLienLac = idNhanVien;
                    DateTime thoiGianLienLac = new DateTime(01 / 01 / 0001);
                    bool trangThaiBangLienLac = true;
                    db.ThemDiaChiLienLac(
                        collection["soNhaDuongTamTru"],
                        thoiGianLienLac,
                        trangThaiBangLienLac,
                        Int32.Parse(collection["idTinh_TPTamTru"].ToString()),
                        idNhanVienBangDiaChiLienLac,
                        Int32.Parse(collection["idQuan_HuyenTamTru"].ToString())
                        );
                }
                return View();

            }
            catch (Exception e)
            {
                ViewBag.error += e;
                return View();
            }
        }
        // GET: XOA NHAN VIEN
        public ActionResult XoaNhanVien(int id)
        {
            return View(db.NhanVien.Find(id));
        }
        [HttpPost]
        public ActionResult XoaNhanVien(int id, FormCollection collection)
        {
            try
            {
                db.XoaLogBoPhan(id);
                return RedirectToAction("DanhSachNhanVien");
            }
            catch (Exception e)
            {
                ViewBag.error = e;
                return View();
            }
        }
        // GET: NhanSu
        [HttpGet]
        public ActionResult DanhSachNhanVien()
        {
            try
            {
                return View(db.DanhSachNhanVien().ToList());
            }
            catch (Exception e)
            {
               
                ViewBag.error = e;
                throw ;
            }
        }
        [HttpGet]
        public ActionResult SuaNhanVien(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ChiTietNhanVienTheoId_Result chiTietNVTheoId = db.ChiTietNhanVienTheoId(id).SingleOrDefault();
            if (chiTietNVTheoId == null)
            {
                return HttpNotFound();
            }

            return View(chiTietNVTheoId);
        }
        public JsonResult LoadTinhThanh()
        {
            var xmlDoc = XDocument.Load(Server.MapPath(@"~/App_Data/Data/Provinces_Data.xml"));
            var xElements = xmlDoc.Element("Root").Elements("Item").Where(x => x.Attribute("type").Value == "province");
            var list = new List<TinhThanhModel>();
            TinhThanhModel tinhthanh = null;
            foreach (var item in xElements)
            {
                tinhthanh = new TinhThanhModel();
                tinhthanh.ID = int.Parse(item.Attribute("id").Value);
                tinhthanh.Name = item.Attribute("value").Value;
                list.Add(tinhthanh);
            }
            return Json(new
            {
                data = list,
                status = true
            });
        }
        public ActionResult GioiTinhPartialView()
        {
            return PartialView();
        }
        public JsonResult LoadQuanHuyen(int TinhThanhID)
        {
            var xmlDoc = XDocument.Load(Server.MapPath(@"~/App_Data/Data/Provinces_Data.xml"));
            var xElement = xmlDoc.Element("Root").Elements("Item")
                .Single(x => x.Attribute("type").Value == "province" &&
                int.Parse(x.Attribute("id").Value) == TinhThanhID);
            var list = new List<QuanHuyenModel>();
            QuanHuyenModel quanhuyen = null;
            foreach (var item in xElement.Elements("Item").Where(x => x.Attribute("type").Value == "district"))
            {
                quanhuyen = new QuanHuyenModel();
                quanhuyen.ID = int.Parse(item.Attribute("id").Value);
                quanhuyen.Name = item.Attribute("value").Value;
                quanhuyen.TinhThanhID = int.Parse(xElement.Attribute("id").Value);
                list.Add(quanhuyen);
            }
            return Json(new
            {
                data = list,
                status = true
            });
        }
        public JsonResult LoadGioiTinh()
        {
            var xmlDoc = XDocument.Load(Server.MapPath(@"~/App_Data/Data/gioitinh.xml"));
            var xElements = xmlDoc.Element("Root").Elements("Item").Where(x => x.Attribute("type").Value == "gioitinh");
            var list = new List<GioiTinhModel>();
            GioiTinhModel gioitinh = null;
            foreach (var item in xElements)
            {
                gioitinh = new GioiTinhModel();
                gioitinh.ID = int.Parse(item.Attribute("id").Value);
                gioitinh.Name = item.Attribute("value").Value;
                list.Add(gioitinh);
            }
            return Json(new
            {
                data = list,
                status = true
            });
        }
        public ActionResult BoPhanPartialView()
        {
            return PartialView();
        }
        public ActionResult LoadBoPhan()
        {
            var xmlDoc = XDocument.Load(Server.MapPath(@"~/App_Data/Data/BoPhan.xml"));
            var xElements = xmlDoc.Element("Root").Elements("Item").Where(x => x.Attribute("type").Value == "bophan");
            var list = new List<BoPhanModel>();
            BoPhanModel bophan = null;
            foreach (var item in xElements)
            {
                bophan = new BoPhanModel();
                bophan.ID = int.Parse(item.Attribute("id").Value);
                bophan.Name = item.Attribute("value").Value;
                list.Add(bophan);
            }
            return Json(new
            {
                data = list,
                status = true
            });
        }
        public ActionResult TinhTrangHonNhanPartialView()
        {
            return PartialView();
        }
        public ActionResult LoadTinhTrangHonNhan()
        {
            var xmlDoc = XDocument.Load(Server.MapPath(@"~/App_Data/Data/TinhTrangHonNhan.xml"));
            var xElements = xmlDoc.Element("Root").Elements("Item").Where(x => x.Attribute("type").Value == "honnhan");
            var list = new List<TinhTrangHonNhanModel>();
            TinhTrangHonNhanModel tinhtranghonnhan = null;
            foreach (var item in xElements)
            {
                tinhtranghonnhan = new TinhTrangHonNhanModel();
                tinhtranghonnhan.ID = int.Parse(item.Attribute("id").Value);
                tinhtranghonnhan.Name = item.Attribute("value").Value;
                list.Add(tinhtranghonnhan);
            }
            return Json(new
            {
                data = list,
                status = true
            });
        }
        public ActionResult DanhSachBoPhanPartialView()
        {
            return PartialView();
        }
        public ActionResult DiaChiTamTruPartialview()
        {
            return PartialView();
        }
        public JsonResult LoadTinhThanhTamTru()
        {
            var xmlDoc = XDocument.Load(Server.MapPath(@"~/App_Data/Data/Provinces_Data.xml"));
            var xElements = xmlDoc.Element("Root").Elements("Item").Where(x => x.Attribute("type").Value == "province");
            var list = new List<TinhThanhModel>();
            TinhThanhModel tinhthanh = null;
            foreach (var item in xElements)
            {
                tinhthanh = new TinhThanhModel();
                tinhthanh.ID = int.Parse(item.Attribute("id").Value);
                tinhthanh.Name = item.Attribute("value").Value;
                list.Add(tinhthanh);
            }
            return Json(new
            {
                data = list,
                status = true
            });
        }
        public JsonResult LoadQuanHuyenTamTru(int TinhThanhID)
        {
            var xmlDoc = XDocument.Load(Server.MapPath(@"~/App_Data/Data/Provinces_Data.xml"));
            var xElement = xmlDoc.Element("Root").Elements("Item")
                .Single(x => x.Attribute("type").Value == "province" &&
                int.Parse(x.Attribute("id").Value) == TinhThanhID);
            var list = new List<QuanHuyenModel>();
            QuanHuyenModel quanhuyen = null;
            foreach (var item in xElement.Elements("Item").Where(x => x.Attribute("type").Value == "district"))
            {
                quanhuyen = new QuanHuyenModel();
                quanhuyen.ID = int.Parse(item.Attribute("id").Value);
                quanhuyen.Name = item.Attribute("value").Value;
                quanhuyen.TinhThanhID = int.Parse(xElement.Attribute("id").Value);
                list.Add(quanhuyen);
            }
            return Json(new
            {
                data = list,
                status = true
            });
        }
    }
}