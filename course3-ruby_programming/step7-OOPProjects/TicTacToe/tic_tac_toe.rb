# Tic Tac Toe 
=begin




# Provides the choices for the user 








=end

class Menu 
	attr_reader :quit				# creating a getter for the quit value via symbol
	
	def initialize( *menu_args )
		@menu_args = menu_args 
		@quit = @menu_args.length	# seeing how many options there are in the array 
	end 
	
	def get_menu_choice
		@menu_args.each_with_index do | item, index |
		# print menu, request user choice, return user choice
		
		puts "#{index + 1}.  #{item}"
		
	end 
		
		print "Enter your choice"
		user_choice = gets.to_i
		return user_choice
	 
end 


end

def board_state( board )
	puts
	puts " #{board[0]} | #{board[1]} | #{board[2]}"
	puts "-" * 12 
	puts " #{board[3]} | #{board[4]} | #{board[5]}"
	puts "-" * 12
	puts " #{board[6]} | #{board[7]} | #{board[8]}"
	puts
end

def horiz_win_check( board, win_condition )
		if board[0] == "X" and board[1] == "X" and board[2] == "X"
			puts "X wins!"
			win_condition = true
			puts "THIS IS WIN:"
			puts win_condition
			return win_condition
		elsif board[3] == "X" and board[4] == "X" and board[5] == "X"
			puts "X wins!"
			win_condition = true
			return win_condition
		elsif board[6] == "X" && board[7] == "X" && board[8] == "X"
			puts "X wins!"
			win_condition = true
			return win_condition
		elsif board[0] == "O" && board[1] == "O" && board[2] == "O"
			puts "O wins!"
			win_condition = true
			return win_condition
		elsif board[3] == "O" && board[4] == "O" && board[5] == "O"
			puts "O wins!"
			win_condition = true
			return win_condition
		elsif board[6] == "O" && board[7] == "O" && board[8] == "O"
			puts "O wins!"
			win_condition = true
			return win_condition
	end
			return win_condition
end 


def vert_win_check

end 

def diag_win_check

end 
			


	
	



def side_choice
	# asking user for input on which side they want and setting the turn/win condition # variable(s)
	puts "Please input the side that you want"
	puts "Choose between X or O please"
	side = gets.chomp.upcase 
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
end

# square_input method
# takes input from the user validates that it is an integer in the range of 1-9(incl)
# takes an argument, side, depending on which side (X or O) is going
def square_input(side, board)
	puts "What Square do you want to put an #{side} in?: "
	selection = gets.chomp.to_i
	
	if selection < 1 or selection > 9
		puts "please input a valid number between 1 and 10"
		until selection >= 1 or selection <= 9 
			selection = gets.chomp.to_i
		end 
	else
		if board[selection - 1].class == Fixnum
			puts "Square #{selection} is where your #{side} will be put \n"
			board[selection - 1] = "#{side}"
			return board
		else 
			puts "Please select another square, that one is already taken"
			square_input(side, board)
		end
	end 
end

def tutorial
	puts
	puts "Tic Tac Toe is a 2 player game between the sides, X and O, who take turns marking the spaces in a 3×3 grid. The player who succeeds in placing three of their marks in a horizontal, vertical, or diagonal row wins the game."
	puts
	return
end


# Creating basic menu options 

menu = Menu.new( 
	"New Game",
	"Tutorial",
	"Quit    ",
	

)


# Initializing variables 
win_condition = false
turn = 1
board = [1, 2, 3, 4, 5, 6, 7, 8, 9]


# basic welcome screen
puts "\n \n \n"
puts "*** WELCOME TO TIC TAC TOE ***"
puts "\n \n \n"


# outputting blank/starting board state to the screen
while (( choice = menu.get_menu_choice ) != menu.quit )
	puts "You chose #{choice}"
	case choice
		when 1 
			puts "new game"
			board_state(board)
			side_choice 
			while win_condition != true and turn <= 9
				if turn %2 == 0
					board_state(board)
					puts "Turn #{turn}, O's turn"
					side = "O"
					square_input(side, board)
					win_condition = horiz_win_check( board, win_condition )
					turn += 1 
				else 
					board_state(board)
					puts "Turn #{turn}, X's turn"
					side = "X"
					square_input(side, board)
					win_condition = horiz_win_check( board, win_condition )
					turn += 1 
				end 
			end 
		when 2 
			puts "Tutorial"
			tutorial
		when 3
			puts "ending the program"
	end
end


