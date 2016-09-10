#Ceasar Cipher 

#Using the alphabet to have something to index
alpha = ["a", "b", "c", "d", "e", "f",
		 "g", "h", "i", "j", "k", "l", 
		 "m", "n", "o", "p", "q", "r", 
		 "s", "t", "u", "v", "w", "x",
		 "y", "z"
		]

#punctuation to check against
punct = [" ", ",", ".", "!", "?"]

#user input and implementing a split/array 		
puts "Please input a letter"
user_string = gets.chomp 
user_string = user_string.downcase.split("")

#asking what the base of the cipher should be 
puts "How much would you like to shift by?"
user_shift = gets.chomp.to_i

new_string = []

#iterating through each letter
#converting to string 
#checking for punctionation
#performing wrap-around logic

user_string.each do |letter|
	letter.to_s
	
	if punct.include?(letter) == true
		new_string << letter
		next
	else
	letter_index = alpha.index(letter)
	index_combined = letter_index + user_shift
		if index_combined >= 26
			index_combined -= 26
		end
	new_string  << alpha[index_combined]
	end
end

#joining final string back together
puts new_string.join("")
