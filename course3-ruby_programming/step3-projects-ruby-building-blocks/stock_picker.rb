# Project 2: Stock Picker

=begin
http://www.theodinproject.com/ruby-programming/building-blocks?ref=lc-pb

Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.
=end


=begin 
This method uses the highest price as a means to bifurcate the given array, from the highest price H the code logic will then create a new array from index 0 up to the index of H and then find the minimum price M, and then calulate the difference between H and M.  

Note that this will not neccessarilly generate the highest profit, but does find the best day to sell H given the constraint of the best day to buy BEFORE that day M.  
=end 

stocks = [3,6,9,15,8,6,1,10]

#setting intial prices/indicies
max_price = stocks.max
min_price = stocks.min
min_price_index = stocks.index(min_price)
max_price_index = stocks.index(max_price)






#edge case if 0 is highest price
if max_price_index == 0
	bad_price = stocks[0]
	stocks = stocks[1..-1]
	max_price = stocks.max
	max_price_index = stocks.index(max_price)
	better_stock_price = stocks[0..(max_price_index)]
	min_price = better_stock_price.min
	min_price_index = better_stock_price.index(min_price)
	stocks.unshift(bad_price)
	
	puts "If you purchase on #{min_price_index+1} and sell on #{max_price_index+1} you will make #{max_price - min_price}$ profit"
	puts stocks
	
#all other cases 
else 
	new_stocks = stocks[0..max_price_index]
	min_price = new_stocks.min
	min_price_index = new_stocks.index(min_price)
	puts max_price 
	puts min_price 
	
	puts "If you purchase on day #{min_price_index} and sell on day #{max_price_index} you will
	make #{max_price - min_price}$ profit"
end


