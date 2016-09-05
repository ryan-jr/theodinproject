#Learn to Program Ruby, Chris Pine
#https://pine.fm/LearnToProgram/chap_08.html
#EXERCISES CH8


def digitstowords number
#covering special cases
	if number < 0
		return "Enter a number that is not negative"
	end
	if number == 0
		return "zero"
	end
	
numstring = ""

onesplace = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]

tensplace = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]

teenagers = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]

left = number
write = left/100
left = left - write * 100

if write > 0
	hundreds = digitstowords write
	numstring = numstring + hundreds + " hundred"

if left > 0
	numstring = numstring + ""
end
end

write = left/10
left = left - write * 10 

if write > 0
	if ((write ==1) and (left > 0))
	numstring = numstring + teenagers[left-1]
	
	left = 0
else
	numstring = numstring + tensplace[write-1]
end

if left > 0
	numstring = numstring + "-"
end
end

write =  left
left = 0

if write > 0
	numstring = numstring + onesplace[write-1]
end

numstring
end

puts digitstowords(  0)
puts digitstowords(100)
puts digitstowords(255)