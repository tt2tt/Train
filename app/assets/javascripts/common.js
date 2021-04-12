$(document).bind('turbolinks:load ajax:complete', function() {
  // セッション
  var path = location.pathname.slice(1);

  $("#sidebar a").each(function(i, elem) {
    if ($(elem).attr('href') == path) {
      $(elem).addClass("current");
    }
  });

  $(function () {
     $("#edit_user .fas").click( function() {
       var index = $('#edit_user .fas').index(this);
       if ($(this).hasClass("fa-eye")){
         $(this).removeClass("fa-eye").addClass("fa-eye-slash");
         $('#edit_user .password').eq(index).attr("type","text");
       }else{
         $(this).removeClass("fa-eye-slash").addClass("fa-eye");
         $('#edit_user .password').eq(index).attr("type","password");
       }
     });
   });

   // home
   $(function () {
      $("#home #display").click( function() {
        $(this).addClass("none")
        $("#home #hide").removeClass("none");
        $("#home #information").removeClass("mosaic");
      });
    });

    $(function () {
       $("#home #hide").click( function() {
         $(this).addClass("none")
         $("#home #display").removeClass("none");
         $("#home #information").addClass("mosaic");
       });
     });
});
