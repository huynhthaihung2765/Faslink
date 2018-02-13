var gioitinh = {
    init: function () {
        gioitinh.loadGioiTinh();
    },
    
    loadGioiTinh: function () {
        $.ajax({
            url: window.location.origin + "/NhanVien/LoadGioiTinh",
            type: "POST",
            dataType: "json",
            success: function (kq) {
                if (kq.status == true) {
                    var html = '<option value="">---Chọn---</option>'
                    var data = kq.data;
                    $.each(data, function (i, item) {
                        html += '<option value="' + item.ID + '">' + item.Name + '</option>';
                    });
                    $('#ddlGioiTinh').html(html);
                }
            }
        })
    }
}
gioitinh.init();