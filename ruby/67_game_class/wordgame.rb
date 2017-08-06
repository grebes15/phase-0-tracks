class Wordgame
	attr_reader :guess_word, :guess_array, :secret_word, :count, :attempted_words

	def initialize(secret_word)
		@secret_word = secret_word.downcase
		@max_no_of_tries = secret_word.length
		@count = 0
		@attempted_words = []
	end
	def check_word(guess_word)
		@guess_word = guess_word.downcase
		secret_array = @secret_word.split(//)
		guess_array = @guess_word.split(//)

		results_string = ""

		secret_array.each_index {|index|
			if secret_array[index] == guess_array[index]
				results_string = results_string << secret_array[index]
			else
				results_string = results_string << "-"
			end
		}
		if (@attempted_words.include? @guess_word) == false
			@count += 1
			@attempted_words.push(@guess_word)
		end 
		return results_string
	end

	def check_success
		if @guess_word == @secret_word
			return "Congratulations, you have guessed the word!"
		elsif
			@max_no_of_tries == @count
			return "You have exceeded the number of tries."
		else
			return "Try again"
		end
	end
end

#wordgame = Wordgame.new("niels") 
#puts wordgame.check_word("niels")

puts "Welcome to the word guessing game"
puts "Please enter your secret word"
secret_word = gets.chomp
wordgame = Wordgame.new(secret_word)

begin
	puts "Please guess the secret word"
	puts "Hint: the word has #{wordgame.secret_word.length} letters"

	guess_word = gets.chomp

	puts wordgame.check_word(guess_word)
	puts "Number of guesses: #{wordgame.count}"

end until wordgame.check_success != "Try again"
puts wordgame.check_success


