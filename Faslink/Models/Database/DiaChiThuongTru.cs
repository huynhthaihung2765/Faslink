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
    
    public partial class DiaChiThuongTru
    {
        public int IdThuongTru { get; set; }
        public int IdTinh_TP { get; set; }
        public string SoNhaDuong { get; set; }
        public Nullable<bool> TrangThai { get; set; }
        public int IdNhanVien { get; set; }
        public Nullable<int> IdQuan_Huyen { get; set; }
    
        public virtual NhanVien NhanVien { get; set; }
    }
}
