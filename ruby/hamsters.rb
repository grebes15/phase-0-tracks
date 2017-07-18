#4.3 Mandatory Pairing: Data Types, IRB, and User Input
#Names Working:
#Andreas Landgrebe
#Bradley Sloan


puts "What the hamster's name?"
hamster_name = gets.chomp.to_s


puts "What volume would you like (e.g., 1-10)?"
volume = gets.chomp
volumeTwo = volume.to_i

puts "What color fur?"
fur = gets.chomp.to_s

puts "Is the hamster a good candidate for adoption?"
candidate_adoption = gets.chomp.to_s

puts "Whats the estimate age?"
estimate_age = gets.chomp


if estimate_age == ""
	estimate_age = nil
end

puts "The name of the hamster is " + hamster_name
puts "The volume that would like is " + volume
puts "The color of the fur is " + fur
puts "The status for adoption: " + candidate_adoption 
puts "The estimate age is " + estimate_age + " years old"