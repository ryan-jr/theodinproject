# Menu 


# Provides the choices for the user 
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
		
		print "Enter your choice"
		user_choice = gets.to_i
		return user_choice
	 
end 


# Creating basic menu options 

menu = Menu.new( 
	"New Game",
	"Tutorial",
	"Quit    ",
	

)


end
