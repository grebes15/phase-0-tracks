#5.2 Arrays and Hashes
#Andreas Bach Landgrebe
#Release 2 Use a Hash in a program

#hash being used to ask user for data
interiordesigner = {
	:name => "",
	:age => 0,
	:number_Of_Children => 0,
	:decor_theme => ""
}
#asking for the name
puts "What is your name?"
interiordesigner[:name] = gets.chomp.to_s

#asking for the age
puts "What is your age?"
interiordesigner[:age] = gets.chomp.to_i

#asking how many children a client has
puts "How many children?"
interiordesigner[:number_Of_Children] = gets.chomp.to_i

#askig what the decor theme should be
puts "What is the decor theme?"
interiordesigner[:decor_theme] = gets.chomp.to_s

#if the user needs to update or change a field
puts "Change field (name, age, number_Of_Children, decor_theme, or none"
change_field = gets.chomp
#if the change_field is none, when nothing gets updated and the original input gets printed out
#if the change_field is not none, when the user will be prompted to ask for a value
if change_field != "none"
	puts "value?"
	change_value = gets.chomp
	interiordesigner[change_field.to_sym] = change_value
	#convert the keys of the hases to a symbol so value can be changed quicker
end

#print out all of the data that may have or may not have been updated.
puts "Name: #{interiordesigner[:name]}"
puts "Age: #{interiordesigner[:age]}"
puts "Number of children: #{interiordesigner[:number_Of_Children]}"
puts "Decor Theme: #{interiordesigner[:decor_theme]}"

#Working with arrays to deomonstrate understanding

array = [1,2,3,4,5]
j = 2
puts array[j] #this will print out 3
i = 4
puts array[i] #this will print out 5
puts array[i-j] #this will print out 3
puts array[6] #this returns nil or nothing
puts array.push(6) #this add 6 to the end of the array
puts array.length #returns the length of the array and at this point, the length is 6
puts array[-1] #print out the last element in the array which is 6
puts array.reverse #reverses the array to display [6,5,4,3,2,1]
array.each{|x| puts x*x} #multiple each number in the array to itself so the result will be:
#1,4,9,16,25,36. Each number is printed on a different line