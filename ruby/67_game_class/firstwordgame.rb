#6.7 Solo Challenge A Game Class
#Andreas Landgrebe

puts "Please enter your secret word"

secret_word = gets.chomp

secret_word = secret_word.downcase

max_no_of_tries = secret_word.length

count = 0

attempted_words = []
puts
puts
puts
puts
puts
puts
puts
puts
puts
puts
puts
puts
puts
puts
puts
puts
puts
puts
puts
puts
puts
puts
puts
puts
puts
puts
puts
puts
puts
puts
puts
puts
puts
puts
puts
puts
puts
puts
puts
puts
begin
puts
puts "Please guess the secret word"
puts "Hint: the word has #{secret_word.length} letters"


guess_word = gets.chomp
guess_word = guess_word.downcase

if attempted_words.include? guess_word == true
	count = count
else
	count += 1
end

attempted_words.push(guess_word)

secret_array = secret_word.split(//)
guess_array = guess_word.split(//)

secret_array.each_index {|index|
	if secret_array[index] == guess_array[index]
		print secret_array[index]
	else
		print "-"
	end
}
puts
puts "Number of guesses: #{count}"



end until secret_word == guess_word || max_no_of_tries == count

if guess_word == secret_word
	puts "Congratulations, you have guess the word!"
end