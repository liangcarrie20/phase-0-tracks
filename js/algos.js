// Function for: FINDING THE LONGEST WORD:
// loop through to find length of each array value
// set i = 0 ; use FOR loop
// new variable named longest
// if true, variable longest word is equal to index of array
// return longest
var array = ["long phrase","longest phrase","longer phrase"];
var names = ["Joe", "Buster", "Matt"]

function longestWord(words) {
	var longest = ""
	for (var i = 0; i < words.length; i++) {
		if (words[i].length > longest.length) {
			longest = words[i]
		}
	}
	return longest;
}

// Function for: checking a shared key-value pair
// Iterate through 1st hash keys
// Iterate through 2nd hash and see if 1st hash key = 2nd hash key
// If no match, no matching key-value pairs
// If there is a match, test if values also match.
// If true, return true.

var hashOne = {name: 'Carrie', hometown: 'SF', age: 26 };
var hashTwo = {name: 'Ringo', hometown: 'SF'};
var hashThree = {name: 'Pepper', age: 1, puppy: true};

function matchingKeyValuePair(firstHash, secondHash) {
	for (var a in firstHash) {
		for (var b in secondHash) {
			if (a === b) {
				if (firstHash[a] === secondHash[b]){
					return true;
				}
			}
		}
	}
	return false
}




// Test longestWord function
console.log(longestWord(array));
console.log(longestWord(names));

// Test matchingKeyValuePair function

console.log(matchingKeyValuePair(hashOne, hashTwo));
console.log(matchingKeyValuePair(hashOne, hashThree));