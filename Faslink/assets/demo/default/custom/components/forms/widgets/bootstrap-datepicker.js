//== Class definition

var BootstrapDatepicker = function () {
    
    //== Private functions
    
    var demos = function () {
        // minimum setup
        $('#m_datepicker_1, #m_datepicker_1_validate').datepicker({
            todayHighlight: true,
            orientation: "bottom left",
            format: 'dd/mm/yyyy',
            templates: {
                leftArrow: '<i class="la la-angle-left"></i>',
                rightArrow: '<i class="la la-angle-right"></i>',
            },
        });
    }
    return {
        // public functions
        init: function() {
            demos(); 
        }
    };
}();
jQuery(document).ready(function() {    
    BootstrapDatepicker.init();
});