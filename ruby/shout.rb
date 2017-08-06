module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
  	words + " I finally got it working!!!!!!!!!!!!!!!!" + "Lets go!!!!!!!!" + ":)"
  end
end

puts "Please any user input"

user_input = gets.chomp

puts Shout.yell_angrily(user_input)
puts Shout.yelling_happily(user_input)
