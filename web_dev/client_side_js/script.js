function hideMe(event) {
  photo.hidden = "true";
}
var photo = document.getElementById("lizard-photo");
document.getElementById("hideBtn").addEventListener("click", hideMe);

function changeFontColor(event) {
  var text = document.getElementsByTagName("strong");
  var word = text[0];
  word.style.backgroundColor = "yellow";
}
document.getElementById("showBtn").addEventListener("click", changeFontColor);

