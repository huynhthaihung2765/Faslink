var honnhan = {
    init: function () {
        honnhan.loadHonNhan();
    },

    loadHonNhan: function () {
        $.ajax({
            url: window.location.origin + "/NhanVien/LoadTinhTrangHonNhan",
            type: "POST",
            dataType: "json",
            success: function (kq) {
                if (kq.status == true) {
                    var html = '<option value="">---Chọn---</option>'
                    var data = kq.data;
                    $.each(data, function (i, item) {
                        html += '<option value="' + item.ID + '">' + item.Name + '</option>';
                    });
                    $('#ddlHonNhan').html(html);
                }
            }
        })
    }
}
honnhan.init();