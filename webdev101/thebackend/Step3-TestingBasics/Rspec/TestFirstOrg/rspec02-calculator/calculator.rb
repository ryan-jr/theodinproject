#Rspec 02
#http://testfirst.org/live/learn_ruby/calculator
#the actual rspec function

#addition of two numbers(num1 and num2)
def add(num1, num2)

sum = num1 + num2
return sum

end

#subtraction of two numbers(num1 and num2)
def subtract(num1, num2)

difference = num1 - num2
return difference

end

#taking in an array of numbers and summing them
#.each seemed to be the path of least resistance
#this could also be achieved with a while loop
#using something like nums.length-1 and iterating
#through the array

def sum(nums)

total = 0
nums.each do |number|
total += number
end

return total

end

#multiplying numbers (num1, num2) for extra credit
def multiply(num1, num2)

product = num1 * num2
return product

end

#finding powers of numbers (num1, num2) for extra #credit
def power(num1, num2)

pow = num1**num2
return pow

end


#test layout/expectations

Topics

functions
math
arrays
iterating/looping
Calculator

you will build a simple calculator script with the following methods:

add takes two parameters and adds them

subtract takes two parameters and subtracts the second from the first

sum takes an array of parameters and adds them all together

Warning

You may not have enough knowledge yet to complete sum. You will probably need to use loops (e.g. while) or iterators (e.g. each) to get the tests to pass.

Bonus

There are also some bonus exercises for when you finish the regular ones. The bonus round will help teach you test-driven development, not simply test-guided learning.

Your mission, should you choose to accept it, is to write tests for three new methods:

multiply which multiplies two numbers together
power which raises one number to the power of another number
[factorial](http://en.wikipedia.org/wiki/Factorial) (check Wikipedia if you forgot your high school math).
Tests

calculator_spec.rb
require "calculator"

describe "add" do
  it "adds 0 and 0" do
    add(0,0).should == 0
  end

  it "adds 2 and 2" do
    add(2,2).should == 4
  end

  it "adds positive numbers" do
    add(2,6).should == 8
  end
end

describe "subtract" do
  it "subtracts numbers" do
    subtract(10,4).should == 6
  end
end

describe "sum" do
  it "computes the sum of an empty array" do
    sum([]).should == 0
  end

  it "computes the sum of an array of one number" do
    sum([7]).should == 7
  end

  it "computes the sum of an array of two numbers" do
    sum([7,11]).should == 18
  end

  it "computes the sum of an array of many numbers" do
    sum([1,3,5,7,9]).should == 25
  end
end

# Extra Credit Test-Driving Bonus:
# once the above tests pass,
# write tests and code for the following:

describe "multiply" do

  it "multiplies two numbers"

  it "multiplies several numbers"

end

describe "power" do
  it "raises one number to the power of another number"
end

# http://en.wikipedia.org/wiki/Factorial
describe "factorial" do
  it "computes the factorial of 0"
  it "computes the factorial of 1"
  it "computes the factorial of 2"
  it "computes the factorial of 5"
  it "computes the factorial of 10"
end