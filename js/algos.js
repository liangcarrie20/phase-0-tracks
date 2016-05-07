var array = ["long phrase","longest phrase","longer phrase"];
var names = ["Joe", "Buster", "Matt"]
// Function for: FINDING THE LONGEST WORD:
// loop through to find length of each array value
// set i = 0 ; use FOR loop
// new variable named longest
// if true, variable longest word is equal to index of array
// return longest

function longestWord(words) {
	var longest = ""
	for (var i = 0; i < words.length; i++) {
		if (words[i].length > longest.length) {
			longest = words[i]
		}
	}
	return longest;
}

// Test longestWord function
console.log(longestWord(array))
console.log(longestWord(names))