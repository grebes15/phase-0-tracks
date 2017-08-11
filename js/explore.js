
//Pseudo For Writing Reverse Function
// Input a phrase
// Replace the first letter of the phrase with the last letter in the phrase and
// replace the last letter of the phrase with the first letter in the phrase.
// Continue this replacement process with the second letter in the phrase along with the second-to-last letter in the phrase.
// End this process once you have gone through all of the letters in the phrase.


function reverse(input_string) {
	var reversed_string = "";
	for (var x = 0; x < input_string.length; x++){
		reversed_string += input_string[input_string.length - (x + 1)];
	}
	return reversed_string;
}

var completed_the_reverse_string = reverse("This string is hopefully reversed");

if (15 == 15) {
	console.log(completed_the_reverse_string);
}

