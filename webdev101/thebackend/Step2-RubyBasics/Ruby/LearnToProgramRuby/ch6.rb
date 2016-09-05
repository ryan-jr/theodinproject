#Learn to Program Ruby, Chris Pine
#https://pine.fm/LearnToProgram/chap_06.html
#EXERCISES CH6

=begin
#99 bottles of beer exercise

#initalize the counter at 99 
counter = 99

#start the program off with a newline
puts " "


#set the condition for the counter
while counter > 0
	if counter == 1
		puts counter.to_s + " bottle of beer on the wall"
		puts counter.to_s + "bottle of beer"
		puts "take one down pass it around"
		counter = counter - 1
		puts counter.to_s + " bottles of beer on the wall"
		puts "No more beer :("
	else
		puts counter.to_s + " bottles of beer on the wall"
		puts counter.to_s + " bottles of beer"
		puts "take one down pass it around"
		counter = counter - 1
		puts counter.to_s + " bottles of beer on the wall"
		puts "\n"
	end 
end



#Repeat yelling program
puts "Speak"
input = gets

if (input == gets.chomp.upcase and input != "BYE")
	puts "NO, NOT SINCE 1938"	
else
	if (input == "BYE")
		nil
	else
	puts input.upcase + "HUH?! SPEAK UP SONNY!"
	puts "Speak"
	input = gets
	end
end
=end

#leap year program

#request starting year and convert neccessary variable
puts "What is the starting year (e.g. 1887)"
start = gets
start = start.to_i

#request ending year and convert neccessary variable
puts "What is the ending year (e.g. 2005)"
stop = gets
stop = stop.to_i

#check if one aspect of the input is valid
if (start > stop)
	puts "Please input an end year that is greater than the start year"
end

#begin while loop with neccessary conditions
while start <= stop
	if (start % 4 == 0 and start % 100 != 0)
		puts "This is a leap year" + start.to_s
		puts "\n"
		start.to_i
		start = start + 1
	else
		start = start + 1 
	end
end
