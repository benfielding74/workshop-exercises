# What is a hash
#   Hash is a data structure made up of key:value pairs within curly braces
#   Dictionary look up ie search key and get definition
#   Key on left => value on right,
# I know one scenario where a hash is preferable to an array
# I can read a value from a hash
#   Similar to calling values from arrays Hash_name[key] ensure pattern matching
# I can change a specific value
#   reassign the value with fridge["veggie"] = "new value"
#   which can also be used to add to hash ie fridge["new_key"] = "new_value"

# I can iterate over a hash using a method that takes a block

# 1
fridge = {
  "fruit" => "Apple",
  "veggie" => "Leek",
  "dessert" => "Cake"
}

puts fridge["fruit"]

fridge2 = {
  :fruit => "Orange",
  :veggie => "Carrot",
  :dessert => "Cheesecake"
}

puts fridge2[:veggie]

# Exercise:

# - Create a program that
# prompts the user for details about their favourite animal
# stores the details as values, assigned to appropriate keys
# prints the hash once the interrogation has finished
# - Create a program that
# prints all the keys in a hash
# prompts the user to select a key
# returns the value associated with that key
# Iterate over a hash and print only the values that begin with ‘S’
# Look at the docs for hashes and play with an interesting method: https://ruby-doc.org/core-3.0.0/Enumerable.html
# Hashes Pill resource: https://github.com/makersacademy/course/blob/cd-github-actions/pills/hashes.md
# ruby-doc.orgruby-doc.org
# Module: Enumerable (Ruby 3.0.0)
# Module : Enumerable - Ruby 3.0.0

animal = {
  :type => "",
  :color => "",
  :noise => ""
}

puts "Tell me what your favourite animal is?"

animal[:type] = gets.chomp

puts "Tell me what color your animal is?"

animal[:color] = gets.chomp

puts "Tell me what noise your animal makes?"

animal[:noise] = gets.chomp

puts animal

animal.each { |key, value| puts key}

puts "Please choose one"
answer = gets.chomp
puts animal[:"#{answer}"]

animal.each { |key, value| 
  if value.chr == "s"
    puts value
  end
}




