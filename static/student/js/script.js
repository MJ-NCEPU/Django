(function($) {
  
  "use strict";



    //  ==================== SCROLLING FUNCTION ====================

    $(window).on("scroll", function() {
        var scroll = $(window).scrollTop();
        if (scroll > 30) {
            $(".top_bar").addClass("scroll animated slideInDown");
        } else if (scroll < 30) {
            $(".top_bar").removeClass("scroll animated slideInDown")
        }
    });



    var header_height = $(".top_bar").innerHeight();

    $(".side_menu").css({
        "top": header_height
    });

    $(".menu").on("click", function(){
      $(".side_menu").toggleClass("active");
      return false;
    });

    $("html").on("click", function() {
        $(".side_menu").removeClass("active");
    });
    $(".menu, .side_menu").on("click", function(e){
        e.stopPropagation();
    });

    $(".user-log").on("click", function() {
        $(".account-menu").slideToggle();
    });
    $("html").on("click", function() {
        $(".account-menu").slideUp();
    });
    $(".user-log, .account-menu").on("click", function(e) {
        e.stopPropagation();
    });


    //  ==================== SCROLLING FUNCTION ====================
    
    $(function () {
      $('[data-toggle="tooltip"]').tooltip()
    })




})(window.jQuery);


