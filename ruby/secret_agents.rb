#4.6 Mandatory Pairing Session
#Andreas Landgrebe
#Samory Harris
#Encyption or Decryption of User-given passwords

def encrypt(string)

	#string.split("").each do |i|
		#puts i.next
	#end
	index = 0
	value = "z"
	"z".succ
	#while loop to advance every letter of a string one letter forward
	while index < string.length 
		string[index] = string[index].succ
		index += 1 
	end
	p string
end

def decrypt(string)
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	index = 0
	#while loop to reverse what the encrypt method accomplishes.
		while index < string.length
			string[index] = alphabet[alphabet.index(string[index]) - 1]
			index += 1
		end
		p string


end
#Testing methods
#encrypt("abc")
#encrypt("zed")
#decrypt("bcd")
#decrypt("afe")

#First, it runs the encrypt method on the string "swordfish".
#This would display every letter of the string one letter forward.
#This would display txpsegjti.
#Then the string "txpsegjti" would run through the decrpt method.
#This would return the original string.

#decrypt(encrypt("swordfish"))

puts "Would you like to decrypt or encrypt your passsword"
answerOne = gets.chomp

puts "What is the password"
answerTwo = gets.chomp

if answerOne == "encrypt"
	encrypt(answerTwo)
else
	answerOne == "decrypt"
	decrypt(answerTwo)
end

