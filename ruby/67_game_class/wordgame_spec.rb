
require_relative 'wordgame'

describe Wordgame do
	let(:wordgame) { Wordgame.new("andreas")}

	it "guesses the correct word from the secret word" do
		wordgame.check_word("andreas")
		expect(wordgame.check_success).to eq "Congratulations, you have guessed the word!"
	end	

	it "guesses the incorrect word from the secret word" do
		wordgame.check_word("andreat")
		expect(wordgame.check_success).to eq "Try again"
	end

	it "exceeds the number of guesses one can have" do
		wordgame.check_word("andreat")
		wordgame.check_word("andreau")
		wordgame.check_word("andreav")
		wordgame.check_word("andreaw")
		wordgame.check_word("andreax")
		wordgame.check_word("andreay")
		wordgame.check_word("andreaz")
		expect(wordgame.check_success).to eq "You have exceeded the number of tries."
	end

	it "checks the count" do
		
	end


end