// Code that tells jQuery to run after document has loaded or "ready"
$("document").ready(function() {
  $("a").click(function() {
    alert("Click click!")
  });

  $('#wrap').css("width", 500);
  $('#wrap').css("margin", "auto");

  $('#toy-poodle').click(function() {
    $(this).hide();
  });
});