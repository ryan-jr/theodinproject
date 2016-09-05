#trying out the fibbo sequence
"""
val1 = 1
fibbo = 0
subval = 0
x = 0
placeval = 0

while x < 10:
	
	subval = val1 - subval
	val1 = val1 + subval
	fibbo = val1 + placeval
	placeval = val1
	
	print("this is done: ", x)
	x = x+1
	

print(fibbo+1)


def fib(n):
	a, b = 0, 1

	while b < n:
		print (b), 
		a, b = b, a+b

fib(1000)
"""	


"""
Project Euler Problem 2:
https://projecteuler.net/problem=2
By considering the terms in the Fibonacci sequence whose values do NOT 
exceed four million, find the sum of the even-valued terms.

"""

#declaring a function to run through the fibbonacci sequence
def fib(n):


#initializing variables
	a =0
	b = 1
	temp = 0
	total = 0

#beginning the while loop that checks if the intilized variable is < n
	while b < n:
		print (b)
		temp = a 
		a = b
		b = b + temp
		if (b != 0 and b % 2 == 0): 
			print("This is an even number: ", b)
			total = total + b
			print("this is the total: ", total)
		else:
			continue
		

fib(4000001)
