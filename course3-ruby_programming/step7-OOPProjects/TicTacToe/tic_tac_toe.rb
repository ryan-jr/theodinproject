# Tic Tac Toe 

# starting_board method which draws the starting board
def blank_board
	1.times do 
		puts " \t * \t * \n"
	end 
	puts "   1 \t *   2   *   3"
	
	2.times do 
		puts " \t * \t * \n"
	end
	
	14.times do 
		print "* "
	end 
	
	puts "\n   4 \t *   5   *   6"
	
	3.times do 
		puts"\t * \t * \n"
	end
	
	14.times do 
		print "* "
	end
	
	1.times do 
		puts "\n \t * \t * \n"
	end 

	puts "   7 \t *   8   *   9"
	
	2.times do 
		puts " \t * \t * \n"
	end
end


# square_input method
# takes input from the user validates that it is an integer in the range of 1-9(incl)
# takes an argument, side, depending on which side (X or O) is going
def square_input(side)
	puts "What Square do you want to put an #{side} in?: "
	selection = gets.chomp.to_i
	if selection < 1 or selection > 9
		puts "please input a valid number between 1 and 10"
	else
		puts "#{selection} is where your #{side} will be put"
	end 
end

# basic welcome screen
puts "\n \n \n"
puts "*** WELCOME TO TIC TAC TOE ***"
puts "\n \n \n"


# outputting blank/starting board state to the screen

puts blank_board

# asking user for input on which side they want and setting the turn/win condition # variable(s)
puts "Please input the side that you want"
puts "Choose between X or O please"
side = gets.chomp.upcase 
turn = 1
win_condition = false

# validating user input
if side == "X"
	puts "You chose X, you go first!"
elsif side == "O"
	puts "You chose O, you go second!"
else
	until side == "X" or side == "O"
		puts "Please select a valid side, either X or O"
		side = gets.chomp.upcase
	end
end

# asking user for input on which square they want to use/place an X/O in
puts "What Square do you want to put a/an #{side} in?: "
selection = gets.chomp.to_i

# Using the turn/win_condition variables and calling the square_input method
while turn <=9 and win_condition == false
	if turn %2 == 0
		puts "O's Turn"
		side = "O"
		square_input(side)
		turn += 1 
	else 
		puts "X's Turn"
		side = "X"
		square_input(side)
		turn += 1 
	end 
end 



	