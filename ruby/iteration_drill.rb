# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
	"shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array using #each,
# printing each item in the array separated by an asterisk
# ----

zombie_apocalypse_supplies.each {|zombie_apocalypse_supply| print "#{zombie_apocalypse_supply} * "}


# 2. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies using #each.
# For instance: are boots in your list of supplies?
# ----
def supplies_contains(supplies, item)
	#$zombie_apocalypse_supplies.each do |zombie_apocalypse_supply|
	supplies.each do |supply|
		if supply == item
			return true
		end
	end
	return false
end
	#puts zombie_apocalypse_supplies.include? zombie_apocalypse_supplies.index
	#if zombie_apocalypse_supply == item
	#	return true
	#end
#end
#return false
#end
puts supplies_contains(zombie_apocalypse_supplies, "compass")
puts supplies_contains(zombie_apocalypse_supplies, "tennis racquet")
# 3. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5, using #each.
# ----

zombie_apocalypse_supplies.each do |x|
	until zombie_apocalypse_supplies.length == 5
		puts zombie_apocalypse_supplies
		zombie_apocalypse_supplies.pop
	end
	puts x
end

puts "Question 4"

# 4. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
	"solar battery", "flashlight"]

#list1 = other_survivor_supplies - zombie_apocalypse_supplies
#list2 = zombie_apocalypse_supplies - other_survivor_supplies
combined_lists = other_survivor_supplies + zombie_apocalypse_supplies

combined_lists= combined_lists.uniq
puts combined_lists

#puts combined_lists
#if other_survivor_supplies.index == zombie_apocalypse_supplies.index
#	combined_lists.pop(index)
#end
#puts combined_lists




#other_survivor_supplies + zombie_apocalypse_supplies


# Hash Drills

extinct_animals = {
	"Passenger Pigeon" => 1914,
	"Tasmanian Tiger" => 1936,
	"Eastern Hare Wallaby" => 1890,
	"Dodo" => 1662,
	"Pyrenean Ibex" => 2000,
	"West African Black Rhinoceros" => 2011,
	"Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash using #each, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# ----

extinct_animals.each do |animal, year|
		print "#{animal} - #{year} *" 
end


# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000, using #each.
# ----
puts "Question 2 on Hashes"

extinct_animals.each do |animal, year|
		if year >= 2000
			extinct_animals.delete(animal)
		end
end
puts extinct_animals

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# using #each, so they accurately reflect what year the animal went extinct.
# ----
puts "Question 3 on Hashes"
extinct_animals.each do |animal, year|
	if year < 2000
		extinct_animals[animal] = year - 3
	end
end
puts extinct_animals

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Build a method  using #each that checks if an animal is in the hash and returns true/false.
# Call the method in your driver code with each of the following animals to check if
# they are extinct or not:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Driver code example: is_extinct?(extinct_animals, "Andean Cat")
# ----
puts "Question 4 on Hashes"
def is_extinct(extinct_animals, animal_name)
	extinct_animals.each do |animal, year|
		if animal_name == animal
			return true
		end
	end
	return false
end
puts is_extinct(extinct_animals, "Andean Cat")
puts is_extinct(extinct_animals, "Dodo")
puts is_extinct(extinct_animals, "Saiga Antelope")

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find a Ruby Hash built-in method that helps you accomplish this or build
# your own method using #each
# ----
puts "Question 5 on Hashes"
def remove_passenger_pigeon(extinct_animals, animal)
	array = []
	array.push(animal)
	array.push(extinct_animals[animal])
	extinct_animals.delete(animal)
	return array
end
puts remove_passenger_pigeon(extinct_animals, "Passenger Pigeon")