class Santa
	def initialize
		puts "Intializing Santa instance ..."
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
