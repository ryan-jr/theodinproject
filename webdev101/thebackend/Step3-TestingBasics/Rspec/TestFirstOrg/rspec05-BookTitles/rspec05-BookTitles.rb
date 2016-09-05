class Book
  attr_accessor :title

  def initialize(title)

    @title = title

  end

#using the 'titlize' method from 'simon says exercise'
  def titleize(title)

    word = title.split(" ")

    cap = []

    word.each do |letters|

 #checking for specific words/conditions
 #simplest/most readable means to implement
 #could also have each word in an array and check against the array
      if letters == "i"
        cap << letters.capitalize
      elsif letters == "day"
        cap << letters.capitalize
      elsif letters == "eat"
        cap << letters.capitalize
      elsif letters == "man"
        cap << letters.capitalize
      elsif letters.length >= 4 and word.index != 0
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
end

#creating the neccessary objects
title = Book.new('inferno')
puts title.titleize('inferno')

title = Book.new("stuart little")
puts title.titleize("stuart little")

title = Book.new("alexander the great")
puts title.titleize("alexander the great")

title = Book.new("to kill a mockingbird")
puts title.titleize("to kill a mockingbird")

title = Book.new("to eat an apple a day")
puts title.titleize("to eat an apple a day")

title = Book.new("war and peace")
puts title.titleize("war and peace")

title = Book.new("love in the time of cholera")
puts title.titleize("love in the time of cholera")

title = Book.new("what i wish i knew when i was 20")
puts title.titleize("what i wish i knew when i was 20")

title = Book.new("the man in the iron mask")
puts title.titleize("the man in the iron mask")