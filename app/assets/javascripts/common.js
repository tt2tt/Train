$(document).bind('turbolinks:load ajax:complete', function() {
  // セッション
  var path = location.pathname.slice(1);

  $("#sidebar a").each(function(i, elem) {
    if ($(elem).attr('class') == path) {
      $(elem).addClass("current");
    }
  });

  // サイドバー
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

   $('#sidebar a').click(function() {
     $(".current").removeClass("current");

     $(this).addClass("current");
     if ($(this).hasClass("home")){
       var url = "/home"
       history.replaceState('','', "/home");
     }else if($(this).hasClass("expenserequest")){
       var url = "/expenserequest"
       history.replaceState('','', "/expenserequest");
     }else if($(this).hasClass("attendance")){
       var url = "/attendance"
       history.replaceState('','', "/attendance");
     }else if($(this).hasClass("payslip")){
       var url = "/payslip"
       history.replaceState('','', "/payslip");
     }else if($(this).hasClass("document")){
       var url = "/document"
       history.replaceState('','', "/document");
     }
       $.ajax({
       type: "GET",
       url: url,
       data:{
         j: "ajax"
     },
       dataType: 'json'
     }).done(function(result) {
       $('#main').html(result.html);
     }).fail(function (jqXHR, textStatus, errorThrown) {
       console.log("ajax通信に失敗しました");
       console.log("jqXHR          : " + jqXHR.status);
       console.log("textStatus     : " + textStatus);
       console.log("errorThrown    : " + errorThrown.message);
     });
  });

    $(document).on("click", "#home #display", function(){
      $(this).addClass("none")
      $("#home #hide").removeClass("none");
      $("#home #information").removeClass("mosaic");
    });

     $(document).on("click", "#home #hide", function(){
       $(this).addClass("none")
       $("#home #display").removeClass("none");
       $("#home #information").addClass("mosaic");
     });

     // pay
     $(document).on("change", "#month_select", function(){
       var year = $("#month_select").val().split('/')[0];
       var month = $("#month_select").val().split('/')[1];
       console.log(month);
       $.ajax({
       type: "GET",
       url: "/information",
       data:{
       year: year,
       month: month
     },
       dataType: 'json'
     }).done(function(result) {
       $('#info_area').html(result.html);
     }).fail(function (jqXHR, textStatus, errorThrown) {
       console.log("ajax通信に失敗しました");
       console.log("jqXHR          : " + jqXHR.status);
       console.log("textStatus     : " + textStatus);
       console.log("errorThrown    : " + errorThrown.message);
     });
     });
     $('#month_select').change(function() {
       var year = $("#month_select").val().split('/')[0];
       var month = $("#month_select").val().split('/')[1];
       console.log(month);
       $.ajax({
       type: "GET",
       url: "/information",
       data:{
       year: year,
       month: month
     },
       dataType: 'json'
     }).done(function(result) {
       $('#info_area').html(result.html);
     }).fail(function (jqXHR, textStatus, errorThrown) {
       console.log("ajax通信に失敗しました");
       console.log("jqXHR          : " + jqXHR.status);
       console.log("textStatus     : " + textStatus);
       console.log("errorThrown    : " + errorThrown.message);
     });
  });

  // モーダル
  $(document).on("click", ".js-modal-open", function(){
    $('.js-modal').fadeIn();
    return false;
  });

  $(document).on("click", ".js-modal-close", function(){
    $('.js-modal').fadeOut();
    return false;
  });

  $(document).on("click", "#fix_button", function(){
    var target = $("#fix_request_target").val();
    var content = $("#fix_request_content").val();
    console.log(target);
    $.ajax({
    type: "POST",
    url: "/create",
    data:{
    target: target,
    content: content
  },
    dataType: 'json'
  }).done(function(result) {
    $('#main').html(result.html);
  }).fail(function (jqXHR, textStatus, errorThrown) {
    console.log("ajax通信に失敗しました");
    console.log("jqXHR          : " + jqXHR.status);
    console.log("textStatus     : " + textStatus);
    console.log("errorThrown    : " + errorThrown.message);
  });
  });
});
