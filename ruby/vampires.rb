#4.5 Solo Challenge: Control Flow Practice
#Andreas Landgrebe

puts "How many employees will be processed?"
number_employees_being_processed = gets.chomp.to_i

for x in 1..number_employees_being_processed

puts "Question for Employee #{x}"

puts "What is your name?"
name_given_response = gets.chomp

drake_cula = "Drake Cula"
tu_fang = "Tu Fang"

is_vampire = "Results inconclusive"

puts "How old are you? What year were you born?"
age_response = gets.chomp.to_i
year_response = gets.chomp.to_i

year_response_to_age = 2017 - year_response

puts "Our company cafeteria servces garlic bread. Should we order some for you?"
garlic_response = gets.chomp

puts "Would you like to enroll in the company's health insurance?"
insurance_response = gets.chomp


begin 
puts "Please name any allergies, type 'done' when finished"
employee_allergies = gets.chomp
end until (employee_allergies == "done" || employee_allergies == "sunshine")

if employee_allergies == "sunshine"
	is_vampire = "Probably a vampire"
else

	if(year_response_to_age == age_response) && (garlic_response == "Yes" || insurance_response == "Yes")
		is_vampire = "Probably not a vampire"
	end
	if(year_response_to_age != age_response) && (garlic_response == "No" || insurance_response == "No")
		is_vampire = "Probably a vampire"
	end
	if(year_response_to_age != age_response) && (garlic_response == "No" && insurance_response == "No")
		is_vampire = "Almost certainly a vampire"
	end
	if (name_given_response == drake_cula || name_given_response == tu_fang)
		is_vampire = "Definitely a vampire"
	end
end #end sunshine 
puts is_vampire

end #end statement for the for loop

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

