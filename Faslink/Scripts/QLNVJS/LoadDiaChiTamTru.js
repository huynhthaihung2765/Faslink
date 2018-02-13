var diachitamtru = {
    init: function () {
        diachitamtru.LoadTinhThanhTamTru();
        diachitamtru.registerEvent();
    },
    registerEvent: function () {
        $('#ddlTinhTamTru').off('change').on('change', function () {
            var id = $(this).val();
            if (id != '') {
                diachitamtru.LoadQuanHuyenTamTru(parseInt(id));
            } else {
                $('#ddlQuanTamTru').html('');
            }
        });
    },
    LoadTinhThanhTamTru: function () {
        $.ajax({
            url: window.location.origin + "/NhanVien/LoadTinhThanhTamTru",
            type: "POST",
            dataType: "json",
            success: function (kq) {
                if (kq.status == true) {
                    var html = '<option value="">---Chọn---</option>'
                    var data = kq.data;
                    $.each(data, function (i, item) {
                        html += '<option value="' + item.ID + '">' + item.Name + '</option>';
                    });
                    $('#ddlTinhTamTru').html(html);
                }
            }
        })
    },
    LoadQuanHuyenTamTru: function (id) {
        $.ajax({
            url: '/NhanVien/LoadQuanHuyenTamTru',
            type: "POST",
            data: { TinhThanhID: id },
            dataType: "json",
            success: function (response) {
                if (response.status == true) {
                    var html = '<option value="">---Chọn---</option>';
                    var data = response.data;
                    $.each(data, function (i, item) {
                        html += '<option value="' + item.ID + '">' + item.Name + '</option>';
                    });
                    $('#ddlQuanTamTru').html(html);
                }
            }
        })
    }
}
diachitamtru.init();