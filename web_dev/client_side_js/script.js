// Code from video
// Verify JavaScript is running
console.log("The script is running!");

function addPinkBorder(event) {
  console.log("click happened! here's the click event:");
  console.log(event);
  event.target.style.border = "2px solid pink";
}

var photo = document.getElementById("lizard-photo");
photo.addEventListener("click", addPinkBorder);

// Challenge 9.2
// Function for highlighting
function highlight(event) {
  event.target.style.backgroundColor = "yellow";
}

var words = document.getElementsByTagName("strong");
var word = words[0];
word.addEventListener("click", highlight);

function hideMe(event) {
  document.getElementById("lizard-photo").hidden = true;
}

var hideButton = document.getElementById("hideBtn");
hideButton.addEventListener("click", hideMe);

function showMe(event) {
  document.getElementById("lizard-photo").hidden = false;
}

var showButton = document.getElementById("showBtn");
showButton.addEventListener("click", showMe);