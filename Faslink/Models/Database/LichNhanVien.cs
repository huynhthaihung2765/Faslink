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
    
    public partial class LichNhanVien
    {
        public int IdNhanVien { get; set; }
        public int IdLich { get; set; }
        public Nullable<System.DateTime> Ngay { get; set; }
        public string GhiChu { get; set; }
    
        public virtual LichLamViec LichLamViec { get; set; }
        public virtual NhanVien NhanVien { get; set; }
    }
}