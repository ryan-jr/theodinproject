#writing test code before running them in rspec
#for testfirst live
#http://testfirst.org/live/learn_ruby/calculator

#Temp
=begin
What I learned: 
1.  Understand what formulas/equations you will need beforehand, it saves you time
2.  I will probably need to go back and refactor the code especially conv1

=end
=begin
def ftoc(temp)
	temp = temp.to_f
	conv1 = 5.0/9.0
	cel = ((temp - 32) * (conv1))
	cel = cel.to_f
	return cel
end

def ctof(temp)
	temp = temp.to_f
	conv1 = 9.0/5.0
	fahr = ((temp * conv1) + 32)
	return fahr
end








#Calculator
def add (num1, num2)
	sum = num1 + num2
	return sum
end

def subtract (num1, num2)
	sub = num1 - num2
	return sub
end

def sum(array)
  array.inject(0, :+)
end
end

def multiply(num1, num2)
	multip = num1 * num2
	return multip
end

add (0,0)
add (2,2)
subtract(10,4)
subtract([10, 10 , 10])

My explanation of the 'titlize' method/function:
Titleize takes in a string of words and capitalizes them based upon a few rules
1.  If it is the first word in a string
2.  If the word is longer than or equal to 3 letters

The method puts all of the words into the array 'split' and intializes the 'x' variable
'x' in this instance, checks our position in the array
if the length of the string is 1 or less, we just take the first element in the array and capitalize it
otherwise we iterate over each element in the array into the variable word and check to see if the length of the word in the string is less than or equal to 3 and make sure it's NOT the first word, if it's not we lowercase the word and add 1 to x.  
We then see if the lenght of the word in the variable word is greater than or equal to 3, if it is, then we capitalize it regardless, and add 1 to x
we then join everything together at the end with a space
we then end the method call, and get ready to start all over again


def titleize (words)
	split = words.split
	x = 0
	if (split.length <= 1)
		split.shift.to_s.capitalize
	else
	split.each do |word|
		if (word.length <= 3 and x !=0)
			word.downcase
			x = x+1
		elsif word.length >= 3
			word.capitalize!
			x = x+1
		end
		split.join(" ")
		
	end
	end
end

puts(titleize("jaws"))
puts(titleize("david copperfield"))
puts(titleize("war and peace"))
puts(titleize("the bridge over the river kwai"))
=end


=begin
Steps:
1.  put each character into an array and separate them with a comma
2.  Test if the first letter is a vowel
3.  If the first character is a vowel add it to the end and add ay
4.  Otherwise do something else
=end

def translate(word)
	ary = Array.new
	ary << word.split("")
	puts "Hello World"
	puts word[0]
	puts "Hey there"
	if (ary[0] == "a")
		puts "hello world"
		puts "This word starts with a vowel"
	end
end

puts(translate("apple"))
