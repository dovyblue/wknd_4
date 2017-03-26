# In this example, we have THREE calculators, the two included in the previous
# exercises as well as Whiz Bang Calculator that can even calculate the hypotenuse
# of a triangle if given the length of the other two sides. Figure out how to 
# DRY up all the code below - there shouldn't be a single method duplicated between
# any two classes.

# -- Inheritance --
# class SimpleCalculator
#   def add(first_number, second_number)
#     first_number + second_number
#   end

#   def subtract(first_number, second_number)
#     first_number - second_number
#   end

#   def multiply(first_number, second_number)
#     first_number * second_number
#   end

#   def divide(first_number, second_number)
#     first_number / second_number
#   end
# end

# class FancyCalculator < SimpleCalculator
#   def square_root(number)
#     Math.sqrt(number)
#   end
# end

# class WhizBangCalculator < FancyCalculator
#   def hypotenuse(first_number, second_number)
#     Math.hypot(first_number, second_number)
#   end
  
#   def exponent(first_number, exponent_number)
#     total = 1
#     exponent_number.times { total = multiply(total, first_number) }
#     total
#   end
# end

# -- Composition --
module Simple
  def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end
end

module Fancy
  def square_root(number)
    Math.sqrt(number)
  end
end

class SimpleCalculator
  include Simple
end

class FancyCalculator 
  include Simple
  include Fancy
end

class WhizBangCalculator 
  include Simple
  include Fancy
  def hypotenuse(first_number, second_number)
    Math.hypot(first_number, second_number)
  end
  
  def exponent(first_number, exponent_number)
    total = 1
    exponent_number.times { total = multiply(total, first_number) }
    total
  end

end

# Copy your driver code from the previous exercise and more below:
simple = SimpleCalculator.new
p simple.add(30, 50)
p simple.subtract(40, 15)
p simple.multiply(50, 4)
p simple.divide(500, 50)
puts "-------------"

fancy = FancyCalculator.new
p fancy.add(30, 50)
p fancy.subtract(40, 15)
p fancy.multiply(50, 4)
p fancy.divide(500, 50)
p fancy.square_root(9)
puts "-------------"
whizbang = WhizBangCalculator.new
p whizbang.add(30, 50)
p whizbang.subtract(40, 15)
p whizbang.multiply(50, 4)
p whizbang.divide(500, 50)
p whizbang.square_root(9)
p whizbang.hypotenuse(6, 4)
p whizbang.exponent(2, 8)
