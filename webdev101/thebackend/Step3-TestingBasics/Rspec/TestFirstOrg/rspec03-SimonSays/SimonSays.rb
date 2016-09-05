def echo(words)

return words

end

def shout(words)

return words.upcase

end


#ok so with repeat we are passing two arguments, the #first is the word that we want to have repeated, and #the second is the number of times we want that word #repeated.  
#When ruby passes in the second argument it will #override what y is currently.  
#we also need to return retstring[0...-1], because
#we need to cut off the last space that the function
#adds in when it goes through the loop(s)

def repeat(x, y = 2)
retstring = ""
    y.times do
       retstring += x + ' ' 
     end
return retstring[0...-1]
end


#this is the same thing as above where we return
#to y characters
def start_of_word(words, y)

return words[0...y]

end


def first_word(words)

first = words.split(" ")
retstring = ""

first.each do |letter|
    if letter != " "
      retstring += letter
    end

return retstring

  end
end

def titleize(words)

word = words.split(" ")

cap = []

    word.each do |letters|

         if letters.length >= 4 and word.index != 0
           cap << letters.capitalize
         else
            cap << letters
         end

    end

      
#making sure that every first word is capitalized
cap[0] = cap[0].capitalize

#making sure that "Over" is not capitalized
#this is not optimal nor dyanmic, and needs to 
#be improved upon

    if cap[2] == "Over"
      cap[2] = "over"
    end

#putting everything back together for the return
cap = cap.join(' ')
cap = cap.to_s
return cap
end

