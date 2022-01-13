# Learning objectives
# I can explain what a method is
# I can explain why we use methods
# I can write a method
# Values passed into methods
# I can understand what SRP is and how we use it
# I can understand how methods interact with each other

def say_hi 
  puts "HI!"
end

def greet_user(greeting)
  puts greeting
end

greet_user(say_hi)

# SINGLE RESPONSIBILITY PRINCIPLE > each method has one single responsibility

# Define the following methods:
# Add
# Subtract
# Divide 
# Multiply
# Define a method called “run” which calls two of the methods above and outputs a number. 
# :star: Exercise Two
# Create a new file and fix the method below so that it doesn’t violate SRP:
# Def greet
#   # greets a user
#   # asks the user what their name is and then greets them with “user_name, it’s lovely to meet you!”	
#   # tells the user the weather today - the weather should be randomly chosen and there should be 3 options 
#   # Tells a user the time now
# end 
# 2. Define a new method that calls two methods from the file above

# Exercise 1

def add(*numbers)
  numbers.sum
end

def subtract(num1, num2)
  num1 - num2
end

def divide(num1, num2)
  num1 / num2
end

def multiply(num1, num2)
  num1 * num2
end

def run(*numbers)
  multiply(*numbers) + divide(*numbers)
end

# Exercise 2

def greet
  puts "What is your name"
  name = gets.chomp
  "#{name}, it's lovely to meet you!"
end

def weather
  conditions = ["Raining", "Overcast", "Sunny"]
  conditions[rand(3)]
end

def time
  
  Time.now.strftime("%H:%M:%S")

end

def current_outlook
  "#{ time } #{ weather }"
end

p current_outlook

