class Santa
	def initialize(gender, ethnicity)
		puts "Intializing Santa instance ..."
		@gender = gender
		@ethnicity - ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end
	def speak
		puts "Ho, ho, ho! Haaappy holidays!"
	end
	def eat_milk_and_cookies(type_of_cookie)
		puts "That was a good #{type_of_cookie}!"
	end
class_santa = Santa.new
class_santa.speak
class_santa.eat_milk_and_cookies("Chocolate-chip")


end
