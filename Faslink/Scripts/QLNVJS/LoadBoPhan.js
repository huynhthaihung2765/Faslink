var bophan = {
    init: function () {
        bophan.loadBoPhan();
    },

    loadBoPhan: function () {
        $.ajax({
            url: window.location.origin + "/NhanVien/LoadBoPhan",
            type: "POST",
            dataType: "json",
            success: function (kq) {
                if (kq.status == true) {
                    var html = '<option value="">---Chọn---</option>'
                    var data = kq.data;
                    $.each(data, function (i, item) {
                        html += '<option value="' + item.ID + '">' + item.Name + '</option>';
                    });
                    $('#ddlBoPhan').html(html);
                }
            }
        })
    }
}
bophan.init();