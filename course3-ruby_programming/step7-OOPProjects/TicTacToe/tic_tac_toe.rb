# Tic Tac Toe 

# Draw Board Method
# Draws the starting board

def blank_board()
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




blank_board 

puts "Please input a number: "
number = gets.chomp
puts number.to_i

	