using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Faslink.Models
{
    public class QuanHuyenModel
    {
       public int ID { set; get; }
       public string Name { set; get; }
       public int TinhThanhID { set; get; }//biet duoc huyen nay tinh nao
    }
}