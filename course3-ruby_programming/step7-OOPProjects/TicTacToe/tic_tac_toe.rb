# Tic Tac Toe 

# Draw Board Method
# Draws the starting board

def starting_board()
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
end



puts "\n \n \n"
puts "*** WELCOME TO TIC TAC TOE ***"
puts "\n \n \n"



board = starting_board()
puts board.blank_board
puts "Please input the side that you want"
puts "Choose between X or O please"
side = gets.chomp.upcase 


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

puts "What Square do you want to put a/an #{side} in?: "
selection = gets.chomp.to_i



	