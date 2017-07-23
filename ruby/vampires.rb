
puts "What is your name?"
name_given_response = gets.chomp

puts "How old are you? What year were you born?"
age_response = gets.chomp.to_i
year_response = gets.chomp.to_i

def convert_year_to_age 
	year_response = 2017 - year_response
	if year_response != age_response && garlic_response == "Yes"
		puts "Probably not a vampire"
	end
end

puts "Our company cafeteria servces garlic bread. Should we order some for you?"
garlic_response = gets.chomp

puts "Would you like to enroll in the company's health insurance?"
insurance_response = gets.chomp

wolves_like_sunshine = true
wolves_like_garlic = true
vampires_like_sunshine = false
vampires_like_garlic = false

convert_year_to_age()


