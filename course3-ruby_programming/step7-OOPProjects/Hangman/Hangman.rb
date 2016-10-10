class Array
  def index_all(obj = nil)
    if obj || block_given?
      proc = obj ? ->(i) { self[i] == obj } : ->(i) { yield self[i] }
      self.each_index.select(&proc)
    else
      self.each
    end
  end
end


class Menu 
	# creating a getter for the quit value via symbol
	
	attr_reader :quit				
	
	# Initializing and creating the menu 
	
	def initialize( *menu_args )
		@menu_args = menu_args 
		@quit = @menu_args.length	# seeing how many options there are in the array 
	end 
	
	# Creates the Menu 
	
	def get_menu_choice
		@menu_args.each_with_index do | item, index |
		# print menu, request user choice, return user choice
		
		puts "#{index + 1}.  #{item}"
		
	end 
		
		print "Enter your choice: "
		user_choice = gets.to_i
		puts
		return user_choice
	 
end 
end

def all_letters(str)

	
    # Use 'str[/[a-zA-Z]*/] == str' to let all_letters
    # yield true for the empty string
    str[/[a-zA-Z]+/]  == str
    return true
end





def guesses ( guess )

	puts "you have already guessed the following: "
	puts guess 

end

def hangman( error_count, parts )



	if error_count == 1
		parts = parts << "/"
	elsif error_count == 2
		parts << "\\"
	elsif error_count == 3
		parts << "|"
	elsif error_count == 4
		parts << "--"
	elsif error_count == 5
		parts << "--"
	elsif error_count == 6
		parts << "O"
		puts "*** GAME OVER ***"
	end


	if error_count > 0
		puts
		puts "     #{parts[5]}            "
		puts "   #{parts[4]}#{parts[2]}#{parts[3]}"
		puts "    #{parts[0]} #{parts[1]}"
		puts
	end
	
	if error_count == 6
		parts.clear
	end
	
end

def tutorial
	puts
	puts "In this game of Hangman the computer selects a random word and you try to guess it within a certain number of guesses (in this case there is a 6 guess maximum."
	puts
	return
end

def board_update( letter_index, letter, board )

board.each_with_index do |element, index|

	if element == "__" and letter_index == true
		board[index] = letter 
	else
		board
	end
	
  end
	return board
end




wordlist = IO.readlines("wordlist.csv", ",")

words = []
defs = []
selection = []
count = 0
error_count = 0
parts = []
guesses = []
win_condition = false


wordlist.each_with_index do | word, index |
	
	if index.even? 
		words << wordlist[index]
	else
		defs << wordlist[index]
	end
end

words.each_with_index do | word, index |
	
	if word.length - 1 > 12
		count += 1
		defs.delete_at(index)
		words.delete_at(index)
	end
	
	
end


# selects a random word and definition and puts them into the selection array

x = rand(0..words.length)
selection << words[x]
selection << defs[x]

# ensures that selection is the correct length by removing any trailing commas
# takes the length of the word and passes it to a variable to later be used
# for outputting the number of board

selection[0] = selection[0].chomp(',')
len = selection[0].length


board = []
board << "__ " * len


# Creating basic menu options 

menu = Menu.new( 
	"New Game",
	"Tutorial",
	"Quit    ",
	

)
puts selection[0]
while (( choice = menu.get_menu_choice ) != menu.quit )
	puts "You chose #{choice}"
	case choice
		when 1 
			puts "New Game"
			while error_count < 6 and win_condition != true
				puts board.to_s
				puts "Please enter a letter: "
				letter = gets.chomp
				letter = letter.downcase

				if all_letters( letter ) == true and selection[0].index( letter ).class == Fixnum 
					puts "#{letter} is in the word!"
					board = board_update( selection[0].index( letter ), letter, board )
				else
					puts "#{letter} is not in the word!"
					error_count += 1
					puts selection[0].index(letter).class
					hangman( error_count, parts )

				end

					
				
			end
		when 2
			tutorial
		when 3
			puts "Ending the program"
			puts "Goodbye!"
	end
	menu
	error_count = 0
end

