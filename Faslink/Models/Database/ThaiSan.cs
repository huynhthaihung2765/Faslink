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
    
    public partial class ThaiSan
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ThaiSan()
        {
            this.KhamThaiSan = new HashSet<KhamThaiSan>();
        }
    
        public int IdThaiSan { get; set; }
        public Nullable<System.DateTime> NgayMangThai { get; set; }
        public Nullable<System.DateTime> DuKienNghi { get; set; }
        public Nullable<System.DateTime> NgayNghi { get; set; }
        public Nullable<System.DateTime> NgaySinhEmBe { get; set; }
        public Nullable<System.DateTime> DuKienLamLai { get; set; }
        public Nullable<System.DateTime> NgayLamLai { get; set; }
        public Nullable<System.DateTime> NgayKetThuc { get; set; }
        public string TinhTrangThaiSan { get; set; }
        public Nullable<System.DateTime> NgayTao { get; set; }
        public string NguoiTao { get; set; }
        public Nullable<System.DateTime> NgaySua { get; set; }
        public string NguoiSua { get; set; }
        public int IdNhanVien { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<KhamThaiSan> KhamThaiSan { get; set; }
        public virtual NhanVien NhanVien { get; set; }
    }
}
