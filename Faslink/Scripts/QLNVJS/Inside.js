  function isNumberKey(evt) {
    var charCode = (evt.which) ? evt.which : event.keyCode
    if (charCode > 31 && (charCode < 48 || charCode > 57))
        return false;
    return true;
}
function xacnhanxoa() {
    var thongbao1 = "Bạn có chắc xóa!!!";
    var thongbao2 = "Hưng";
    var thongbao3 = "1265112";
    var result = confirm(thongbao1 +"\n" + thongbao2 + "\n" + thongbao3)
    if (result) {
      
    }
}