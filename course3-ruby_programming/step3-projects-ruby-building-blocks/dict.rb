


dict = ["he", "l", "o", "a", "i", "u" "am"]
frequencies = Hash.new(0)
freqs = Hash.new(0)
letter_ctr = 0 
word_ctr = 0
words = "hey there obama"
new_word = []
new_letter = []



if words.include?(" ")
	multi = words.split("")
	
	multi.each do |mult|
		puts multi
	# with each element in the array I want to iterate over it, push it into a new array, and in that new array iterate over every letter in the word, then drop the word that was created in the new array. 

	new_letter = mult.split("") 
	
		new_letter.each do |ltr| 
			puts "#{ltr}"
			new_word << ltr
			new_word = new_word.to_s
			puts new_word
			
			
			if dict.include?(ltr.to_s) && dict.include?(new_word)
    			frequencies[ltr] += 1
    		elsif dict.include?(new_word)
    	        freqs[new_word] += 1 
    	    elsif dict.include?(ltr.to_s)
    			 frequencies[ltr] += 1
    end
    	#puts new_letter
    	
	end
end 	
else 
	letters = words.split("")
	letters.each do |ltr|
	
	new_letter << ltr 
	new_word = new_letter.join.to_s
	
    if dict.include?(ltr) 
    	frequencies[ltr] += 1
    elsif dict.include?(new_word)
    	 freqs[new_word] += 1 
    end
    
	end
end 

#if there is a space space index or include? then use the multi variable otherwise just use letters.  From there you can implement each word into it's own array with an each and then iterate through each word and check if see if stuff is there.  
		
		
		#you still have to do the if statements 

puts freqs	
puts frequencies

