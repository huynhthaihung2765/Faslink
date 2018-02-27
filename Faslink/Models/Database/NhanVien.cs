//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Faslink.Models.Database
{
    using System;
    using System.Collections.Generic;
    
    public partial class NhanVien
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public NhanVien()
        {
            this.CongTac = new HashSet<CongTac>();
            this.DiaChiLienLac = new HashSet<DiaChiLienLac>();
            this.DiaChiThuongTru = new HashSet<DiaChiThuongTru>();
            this.DiaDiemLamViec = new HashSet<DiaDiemLamViec>();
            this.DonXinNghiThaiSan = new HashSet<DonXinNghiThaiSan>();
            this.HopDongLaoDong = new HashSet<HopDongLaoDong>();
            this.LichNhanVien = new HashSet<LichNhanVien>();
            this.LogBoPhan = new HashSet<LogBoPhan>();
            this.NuoiConNho = new HashSet<NuoiConNho>();
            this.NghiPhep = new HashSet<NghiPhep>();
            this.NhanVienChucVu = new HashSet<NhanVienChucVu>();
            this.ThaiSan = new HashSet<ThaiSan>();
            this.TrinhDo = new HashSet<TrinhDo>();
        }
    
        public int IdNhanVien { get; set; }
        public string HoTen { get; set; }
        public Nullable<int> IdGioiTinh { get; set; }
        public Nullable<System.DateTime> NgayVao { get; set; }
        public Nullable<System.DateTime> NgaySinh { get; set; }
        public string NoiSinh { get; set; }
        public string HonNhan { get; set; }
        public string DienThoai { get; set; }
        public string DienThoaiNguoiThan { get; set; }
        public string EmailCTy { get; set; }
        public string EmailCaNhan { get; set; }
        public string QuocTich { get; set; }
        public string TonGiao { get; set; }
        public string DanToc { get; set; }
        public string Hinh { get; set; }
        public Nullable<int> SoNguoiPhuThuoc { get; set; }
        public Nullable<bool> TrangThai { get; set; }
        public Nullable<int> Mvt { get; set; }
        public string Ka { get; set; }
        public string ToLamViec { get; set; }
        public Nullable<System.DateTime> NgayNghi { get; set; }
        public string NguoiGioiThieu { get; set; }
        public string SoCMND { get; set; }
        public Nullable<System.DateTime> NgayCap { get; set; }
        public string NoiCap { get; set; }
        public string NguyenQuan { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CongTac> CongTac { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DiaChiLienLac> DiaChiLienLac { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DiaChiThuongTru> DiaChiThuongTru { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DiaDiemLamViec> DiaDiemLamViec { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DonXinNghiThaiSan> DonXinNghiThaiSan { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<HopDongLaoDong> HopDongLaoDong { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<LichNhanVien> LichNhanVien { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<LogBoPhan> LogBoPhan { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<NuoiConNho> NuoiConNho { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<NghiPhep> NghiPhep { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<NhanVienChucVu> NhanVienChucVu { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ThaiSan> ThaiSan { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TrinhDo> TrinhDo { get; set; }
    }
}
