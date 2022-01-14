# What is a class > a mini world that you create and give properties to, a blueprint
# A set of instructions for how an object should behave
# I can create a class
# An instance is a copy of a class
# I can understand why we use classes
# I understand how to add behaviour and a state to a class
#   a behaviour is a method in/on a class
#   states are attributes of the object - with intialize
# I understand the idea of cohesion
# 

class Human

  # attributes/state
  def initialize(name, age)
    @name = name
    @age = age

  end

  def eat(food_item)
    [].push(food_item)
  end

  def breathe
    "Don't forget to breathe in"
  end

end

p human_one = Human.new("Ben", 47)
p human_two = Human.new("Ian", 110)

p human_one.breathe
p human_two.eat("cheese")

# :star: Exercises
#   - Create an Animal class
#   - Give your Animal some behaviour!
#   - Create some instances to experiment with
#   - Instantiate your Animal with some state
# BONUS
#   - Create a Customer class
#   - Give the customer the behaviour of buying items
#   - Keep a list of the items
#   - Create a Display class
#   - Display the customer items (edited) 

class Animal
  
  def initialize(legs, color)
    @legs = legs
    @color = color
  end

  def walk
    p "walking"
  end

  def eating(food)
    @stomach = [].push(food)
  end

end

dog = Animal.new(4, "Black")

class Customer
  def buying_items(*item)
    $items = item.each { |item| [].push(item) }
  end
end

class Display

  def print_items
   $items
  end

end

me = Customer.new

me.buying_items("cup","knife","plate","food")

p Display.new.print_items

