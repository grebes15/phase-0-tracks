#5.5 Solo Challenge: Manipulating Strings with Iteration


#create a hash to store any possible combinations to create a fake name after inputting the spy's real name
alphabet_encrypted = {
	a: 'e',
	b: 'c',
	c: 'd',
	d: 'f',
	e: 'i',
	f: 'g',
	g: 'h',
	h: 'j',
	i: 'o',
	j: 'k',
	k: 'l',
	l: 'm',
	m: 'n',
	n: 'p',
	o: 'u',
	p: 'q',
	q: 'r',
	r: 's',
	s: 't',
	t: 'v',
	u: 'a',
	v: 'w',
	w: 'x',
	x: 'y',
	y: 'z',
	z: 'b',
	A: 'E',
	B: 'C',
	C: 'D',
	D: 'F',
	E: 'I',
	F: 'G',
	G: 'H',
	H: 'J',
	I: 'O',
	J: 'K',
	K: 'L',
	L: 'M',
	M: 'N',
	N: 'P',
	O: 'U',
	P: 'Q',
	Q: 'R',
	R: 'S',
	S: 'T',
	T: 'V',
	U: 'A',
	V: 'W',
	W: 'X',
	X: 'Y',
	Y: 'Z',
	Z: 'B'
}

#def encrypted_name
#last_name.each_char{ |c| print alphabet_encrypted[c.to_sym]} 
#first_name.each_char{ |c| print alphabet_encrypted[c.to_sym]} 
#end



empty_hash = {} #empty hash to try to store the spy's actual name and fake name.
loop do
puts
puts "Please provide a spy's real name or type 'quit' when completed"
real_name = gets.chomp

break if real_name == "quit"

#split the inputted string into two indexes in an arraywith the space to know first name and last name
element = real_name.split(" ") 
 
first_name = element[0]
last_name = element[1]
full_name = first_name + last_name
empty_hash[real_name.to_sym] = real_name.each_char{ |c| full_name = alphabet_encrypted[c.to_sym]}

puts "The encrypted name is"
last_name.each_char{ |c| print alphabet_encrypted[c.to_sym]}
first_name.each_char{ |c| print alphabet_encrypted[c.to_sym]} 

puts 
puts
#displays the encrypted name and then displays the actually name
last_name.each_char{ |c| print alphabet_encrypted[c.to_sym]} 
first_name.each_char{ |c| print alphabet_encrypted[c.to_sym]} 
p " is actually #{real_name}"
end

#empty_hash.each {|actual_name, spy_name| puts "#{spy_name} is actually #{actual_name}"}


#each_char merhod to iterate through all characters in the inputted string



#last_name.each_char{ |c| print alphabet_encrypted[c.to_sym]} + first_name.each_char{ |c| print alphabet_encrypted[c.to_sym]}
#p " is acutally #{real_name}"



#real_name_stored = real_name
#puts real_name_stored + "is actually " + last_name_stored + first_name_stored

#def first_name(real_name)

 #   if real_name.split.count > 1
  #    real_name.split.first
   # else
    #  real_name

    #end
  #end

  #def last_name(real_name)
    #if real_name.split.count > 1
      #real_name.split.last
    #end
  #end

#puts last_name(alphabet_encrypted[key.to_sym])
#puts last_name(real_name.each_char { |c| print alphabet_encrypted[c.to_sym]}) + first_name(real_name.each_char { |c| print alphabet_encrypted[c.to_sym]})
#real_name.each_char { |c| print alphabet_encrypted[c.to_sym]}

#puts alphabet_encrypted[real_name.to_sym]

#puts alphabet_encrypted[real_name].values

#alphabet_encrypted[real_name] = alphabet_encrypted.values

#puts alphabet_encrypted.values

#alphabet_encrypted.each {|key,value| alphabet_encrypted[real_name] = alphabet_encrypted.values}
