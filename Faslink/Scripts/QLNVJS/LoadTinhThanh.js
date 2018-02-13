var diachithuongtru = {
    init: function () {
        diachithuongtru.loadTinhThanh();
        diachithuongtru.registerEvent();
    },
    registerEvent:function(){
        $('#ddlTinh').off('change').on('change', function () {
            var id = $(this).val();
            if (id!='') {
                diachithuongtru.loadQuanHuyen(parseInt(id));
            } else {
                $('#ddlQuan').html('');
            }
        });
    },
    loadTinhThanh: function () {
        $.ajax({
            url: window.location.origin + "/NhanVien/LoadTinhThanh",
            type: "POST",
            dataType: "json",
            success: function (kq) {
                if (kq.status == true) {
                    var html ='<option value="">---Chọn---</option>'
                    var data = kq.data;
                    $.each(data, function (i, item) {
                        html += '<option value="' + item.ID + '">' + item.Name + '</option>';
                    });
                    $('#ddlTinh').html(html);
                }
            }
        })
    },
    loadQuanHuyen: function (id) {
        $.ajax({
            url: '/NhanVien/LoadQuanHuyen',
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
                    $('#ddlQuan').html(html);
                }
            }
        })
    }
}
diachithuongtru.init();