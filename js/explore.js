// define reverse function that takes a string parameter
// define variable to store reversedString
// set var i equal to string.length -1
// while i is greater than or equal to 0
// decrement i (i--)
// have string[i] be added to reversedString
// return reversedString

function reverse(string) {
	var reversedString = "";
	for (var i=string.length -1; i >= 0; i--)
		reversedString += string[i];
		return reversedString;
}

// driver code to test reverse function
console.log(reverse("hello"));