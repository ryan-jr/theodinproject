#Learn to Program Ruby, Chris Pine
#https://pine.fm/LearnToProgram/chap_07.html
#EXERCISES CH7

=begin

Let's write a program which asks us to type in as many words as we want (one word per line, continuing until we just press Enter on an empty line), and which then repeats the words back to us in alphabetical order.


words = []

puts "Put in whatever words you like, when you are done, just press enter"
userinput = gets
words << userinput

while userinput !=""
	if (userinput != "\n")
		puts "What else would you like in this list?"
		userinput = gets
		words << userinput
	else
		puts "ENDING NOW"
		puts "This is your list, sorted in alphabetical order:"
		puts "\n"
		puts words.sort
			break
	end
end



=end



#the same program as above, without using sort


=begin
steps:
1.  Take user input
2.  Compare user input against the rest of the array
3.  Put the input in the correct index
Addendum: to avoid issues, put everything into lowercase
just regularly do the sorting in the loop, compare newest entry against the last entry, and see what comes out.  




words = []

puts "Put in whatever words you like, when you are done, just press enter"
userinput = gets
words << userinput

while userinput !=""
	if (userinput != "\n")
		puts "What else would you like in this list?"
		userinput = gets
		words << userinput
	else
		puts "ENDING NOW"
		puts "This is your list, sorted in alphabetical order:"
		puts "\n"
		puts words.sort
			break
	end
end
=end



#setting the line width and all of the chapter/ToC strings
linewidth = 20

tocarray = ["Table of Contents", "Chapter 1: Numbers", "Chapter 2: Letters", "Chapter 3: Variables", "page 1", "page 72", "page 118"]

puts " " * 12 + tocarray[0].to_s
puts "\n"
puts tocarray[1].to_s + " " * 10 + tocarray[4].to_s
puts tocarray[2].to_s + " " * 10 + tocarray[5].to_s
puts tocarray[3].to_s + " " * 8 + tocarray[6].to_s



