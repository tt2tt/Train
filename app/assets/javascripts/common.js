$(document).bind('turbolinks:load ajax:complete', function() {
  var path = location.pathname.slice(1);

  $("#sidebar a").each(function(i, elem) {
    console.log($(elem).attr('href'));
    if ($(elem).attr('href') == path) {
      $(elem).addClass("current");
    }
  });
});
