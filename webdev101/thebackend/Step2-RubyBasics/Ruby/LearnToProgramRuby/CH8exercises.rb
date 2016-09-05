
def digitstowords number
#covering special cases
	if number < 0
		return "Enter a number that is not negative"
	end
	if number == 0
		return "zero"
	end

#The string we will return, depending on input

numstring = ""
tenthousandsplace = ["ten ", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]

onesplace = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]

tensplace = ["ten ", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]

hundreds = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]

thousands = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]

hundredthousandsplace = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]

millionsplace = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]

teenagers = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]


#millions block
left = number
write = left/1000000
left = left - write * 1000000

if write > 0
	millionsplace = digitstowords write
	numstring = numstring + millionsplace + " million"

if left > 0
	numstring = numstring + " "
end
end


#ten thousands block
write = left/1000
left = left - write * 1000

if write > 0
	tenthousandsplace = digitstowords write
	numstring = numstring + tenthousandsplace + " thousand"

if left > 0
	numstring = numstring + " "
end
end


#thousands block

write = left/1000
left = left - write * 1000

if write > 0
	thousands = digitstowords write
	numstring = numstring + thousands + " thousand "

if left > 0
	numstring = numstring + " "
end
end


#hundreds block
write = left/100
left = left - write * 100


if write > 0
	hundreds = digitstowords write
	numstring = numstring + hundreds + " hundred"

if left > 0
	numstring = numstring + " "
end
end

#tens block
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

#ones block
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
puts digitstowords(2555555)