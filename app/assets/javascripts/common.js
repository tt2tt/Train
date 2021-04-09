$(document).bind('turbolinks:load ajax:complete', function() {
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
});

// $(function() {
//     //チェックボックスの変化時関数
//     $("#password-check").change(function() {
//         if ($(this).prop("checked")) {
//             //チェックONの場合
//             $("#password-test").attr("type","text");
//         } else {
//             //チェックOFFの場合
//             $("#password-test").attr("type","password");
//         }
//     });
// });
