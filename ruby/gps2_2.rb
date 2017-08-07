#GPS 2.2
#Andreas Landgrebe
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # [fill in any steps here]
  # list[array] = string.split
  # set default quantity = 1
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]


#convert your item string into an array of strings
#for each element in the array of strings, 
# => create a list_item so that quantity is 1 and the item is the element 
# => push the list_item into the $list array 	
#
#
#
#

def new_list(item_String, quantity = 1)
  $list = []
  array_strings = item_String.split
  array_strings.each do |element|
  	list_item = {
  		quantity: quantity,
  		item: element
  	}
  	 $list.push(list_item) 
  	end
end

def add_to_list (item, quantity = 1)
  list_item = {
    quantity: quantity,
    item: item
  }
  $list.push(list_item)
end


# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: hash = { quantity: quantity,
#item: item
#}
#use the push method to add onto array from hash
# output: array


def remove_from_list (item)
  $list.delete_if{|i| i[:item] == item}
end


# Method to remove an item from the list
# input: item and using array as a global variable
# steps: use delete or delete_if to remove an item from array
# output: remove the item from the list.


def update_quantity (quantity, item)
  $list.each do |list_item|
    if list_item[:item] == item
      list_item[:quantity] = quantity
    end
  end
end

# Method to update the quantity of an item
# input: item. quantity
# steps: iterate through the array
#specify a specific item, then specify the quantity that you want to change it to.
# output: update the quantity for the item


def print_list
  $list.each {|list_item| puts "#{list_item[:quantity]} #{list_item[:item]}"}
end

# Method to print a list and make it look pretty
# input: global array
# steps: iterate through the array using an each metohd
# output: print out the hash specify the quantity and item and keys and values

new_list("carrots apples cereal pizza")

#new_list("Onions")
# $list
add_to_list("Lemonade", 2)
add_to_list("Tomatoes", 3)
add_to_list("Ice Cream", 4)
# p $list
# puts $list.length
remove_from_list("Lemonade")
# puts $list.length

# add_to_list("apples", 15)
# print_list
# add_to_list("carrots", 12)
update_quantity(1, "Ice Cream")
# puts
print_list

#Release 4: Reflect
# I learned that when working on this challenge, having a basic layout of pseudocode before you start programming is very effective.
# This helps you understand what is going asked and assists you in brainstorming ideas on how to complete a specific assignment.
# The tradoffs to using an array and hashes for this challenge is that if you use an array of hashes to complete this assignment,
# one is able to store more items into the list of groceries.
# A method return the last line in the method unless specified elsewhere with a return statement or a break statement.
# You can pass several data types into methods as arguments.
# You can pass information between methods as well as the variables that you are using are already initialized.
# The concepts that were solidifed in this challenge was being able to organize program effectively by writing pseudocode when it is appropriate.