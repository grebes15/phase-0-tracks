module Shout
  # def self.yell_angrily(words)
  #   words + "!!!" + " :("
  # end

  # def self.yelling_happily(words)
  # 	words + " I finally got it working!!!!!!!!!!!!!!!!" + "Lets go!!!!!!!!" + ":)"
  # end
   def yell_angrily(words)
     words + "!!!" + " :("
   end

   def yelling_happily(words)
   	words + " I finally got it working!!!!!!!!!!!!!!!!" + "Lets go!!!!!!!!" + ":)"
   end

end

class Programming
	include Shout
end

class Parents
	include Shout
end

puts "Please any user input"

user_input = gets.chomp

#puts Shout.yell_angrily(user_input)
#puts Shout.yelling_happily(user_input)

programming = Programming.new
p programming.yell_angrily("Why can't I get this to work")
p programming.yelling_happily(user_input)

parents = Parents.new
p parents.yelling_happily("We are so proud of you")
p parents.yell_angrily("We are very disappointed in you")
