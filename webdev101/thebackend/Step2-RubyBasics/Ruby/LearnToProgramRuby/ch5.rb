#Learn to Program Ruby, Chris Pine
#https://pine.fm/LearnToProgram/chap_05.html
#EXERCISES CH4

=begin
#accepting user input for first, middle, and last name
puts "What is your first name?"
first = gets.chomp
puts "What is your middle name?"
middle = gets.chomp
puts "What is your last name?"
last = gets.chomp

#printing user input in the proper format
puts "Nice to meet you" + " " + first +  " " + middle + " " + last

#accepting/printing user input 
puts "And what is your favorite number"  + " " + first +  " " + middle + " " + last + "?"
num = gets.chomp
num = num.to_i + 1
num = num.to_s
puts "This is a bigger and better favorite number that you might like " + num

#accpting user input, modifying user input as neccessary, and printing user input
puts "What do you want?"
text = gets.chomp
angry = "What do you mean " + "'" + text + "'" + " You're fired!!!"
puts angry.upcase
=end


#setting the line width and all of the chapter/ToC strings
linewidth = 20
str0 = "Table of Contents"
str1 = "Chapter 1: Numbers"
str2 = "Chapter 2: Letters"
str3 = "Chapter 3: Variables"

#setting all of the page strings
page1 = "page 1"
page2 = "page 72"
page3 = "page 118"


#printing all of the strings, newline characters, and neccessary left/right justifications
puts (str0.center(linewidth+30))
puts "\n"
puts str1.ljust(linewidth) + page1.rjust(linewidth)
puts str2.ljust(linewidth) + page2.rjust(linewidth)
puts str3.ljust(linewidth) + page3.rjust(linewidth)
