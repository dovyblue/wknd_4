# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code 
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)

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

class SimpleCalculator 
  include Simple
end

class FancyCalculator 
  include Simple
  def square_root(number)
    Math.sqrt(number)
  end

end

# Copy your driver code from the previous exercise below:
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
