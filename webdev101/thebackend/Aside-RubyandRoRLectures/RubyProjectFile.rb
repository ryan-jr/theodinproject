#print commands
#Simple Hello World
puts "Hello World"
puts "This will go on another line"

puts "Hello World"

#ask for age and ask for name program

#We use a .chomp here b/c otherwise the carriage return will mess with formatting later on
puts "Please enter your name: "
name = gets.chomp

puts "Please enter your age: "
age = gets.to_i

#formula
#AGE * days * hours * minutes * seconds
agecalc = age * 365 * 24 * 60 * 60

puts name + " is" + agecalc.to_s + "  seconds old"

#another way to do it
puts "#{name} is #{age * 365 * 24 * 60 * 60} seconds old and is verified here: #{agecalc}"