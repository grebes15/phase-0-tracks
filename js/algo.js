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

//Release 0 function to search for the longest string
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
//Release 1: Find a Key Value Match
//input two hashes
//loop through the length of the hash to be able to iterate through all the information in the hashes
//check to see if any of the indexes in the first hash is equal to any of the indexes in the second hash
//if any of the key value pairs match, then return true. If not, return false.


//Release 1 function to find a key value match
function findingAMatch(hashOne, hashTwo){
	PersonalInformationOne = (Object.keys(hashOne));
	PersonalInformationTwo = (Object.keys(hashTwo));
	for (var x = 0; x < PersonalInformationOne.length; x++) {
		if (hashOne[PersonalInformationOne[x]] == hashTwo[PersonalInformationOne[x]]){
			return true;
		}
	}
	return false;
}

//Release 2: Generate Random Test Data
// use an alphabet variable to have access to all letters in alphabet
// geneate a random string and store it in a variable and then push it to an array and return the array to see what is in their\
// Use a nested for loop to be able to generate the specified number of random words to be generated.
// The alphabetGenerator variable is being used to randomly input any letter in the alphabet.

function geneateRandomWord(integer){
	var alphabet = "abcdefghijklmnopqrstuvwxyz";
	var randomStringGenerator = "";
	var array_with_random_generated_words = [];
	var wordLength = Math.floor(Math.random()*10) +1;
	for (var x = 0; x < integer; x++) {
		for(var y = 0; y < wordLength; y++) {
			alphabetGeneator = Math.floor(Math.random()*25) + 1;
			randomStringGenerator += alphabet.charAt(alphabetGeneator);
		}
		array_with_random_generated_words.push(randomStringGenerator);
	}
	return array_with_random_generated_words
}



//Driver Code for Release 0 to test for longest string, word, or phrase
console.log(longestWordSearch(["long phrase","longest phrase","longer phrase"]));
console.log(longestWordSearch(["Roger Federer","Rafael Nadal","Andy Murray", "Novak Djokovic"]));

//Driver Code for Release 1 to print true if objects of hash being used as input share at least one key value pair

console.log(findingAMatch({name: "Steven",age: 54}, {name: "Tamir",age: 54}));

console.log(findingAMatch({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3})); 

console.log(findingAMatch({name: "Andreas Landgrebe", age: 23}, {name: "Andreas Bach Landgrebe", age: 18})); 

//Driver Code for Release 2

console.log(geneateRandomWord(5));
console.log(geneateRandomWord(2));
console.log(geneateRandomWord(15));

