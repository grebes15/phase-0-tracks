class Santa

	attr_reader :ethnicity #getter for ethnicity
	attr_accessor :age, :gender #getters and seters for age and gender
	def initialize(gender, ethnicity)
		puts "Intializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = rand(141)
	end
	def speak
		puts "Ho, ho, ho! Haaappy holidays!"
	end
	def eat_milk_and_cookies(type_of_cookie)
		puts "That was a good #{type_of_cookie}!"
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(name_of_reindeer)
		@reindeer_ranking= @reindeer_ranking.insert(-1, @reindeer_ranking.delete_at(@reindeer_ranking.index(reindeer_name)))
	end
end

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

class_santa = Santa.new(example_genders.sample, example_ethnicities.sample)
class_santa.speak
class_santa.eat_milk_and_cookies("Chocolate-chip")
p class_santa.age = rand(141)
p class_santa.gender
p class_santa.ethnicity

multiple_santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

150.times do |x|
	multiple_santas << Santa.new(example_genders.sample, example_ethnicities.sample)
	puts "Here comes Santa Claus. This santa is #{multiple_santas[x].age} years old."
	puts "This Santa has a gender of #{multiple_santas[x].gender}"
	puts "This Santa has an ethnicity of #{multiple_santas[x].ethnicity}"
end