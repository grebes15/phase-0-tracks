//Andreas Landgrebe
// 7.3 Solo Challenge: Alogorithm Practice
//
//Release 0: Find the Longest Phrase
//writing a function to find the longest phrase out of a collection
//take a list of phrases or words
//find a length of each phrases of words
//once you find a length of each phrase or word in an array, then compare the each of those phrases to eachother.
//if a phrase of word is longer then replace that phrease of word to the variable being used for the longest word or phrase
//return the longest word of phrase

function longestWordSearch(input_string) {
	var longestWord = '';
	var count_length = 0;
	for (var x = 0; x < input_string.length; x++) {
		if (count_length < input_string[x].length) {
			count_length = input_string[x].length;
			longestWord = input_string[x];
		}
	}
	return longestWord;
}

//Driver Code for Release 0 to test for longest string, word, or phrase
console.log(longestWordSearch(["long phrase","longest phrase","longer phrase"]))

console.log(longestWordSearch(["Roger Federer","Rafael Nadal","Andy Murray", "Novak Djokovic"]))