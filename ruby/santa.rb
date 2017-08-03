class Santa
	def initialize(gender, ethnicity)
		puts "Intializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		age = 0
	end
	def speak
		puts "Ho, ho, ho! Haaappy holidays!"
	end
	def eat_milk_and_cookies(type_of_cookie)
		puts "That was a good #{type_of_cookie}!"
	end
class_santa = Santa.new("agender", "black")
class_santa.speak
class_santa.eat_milk_and_cookies("Chocolate-chip")


end

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end