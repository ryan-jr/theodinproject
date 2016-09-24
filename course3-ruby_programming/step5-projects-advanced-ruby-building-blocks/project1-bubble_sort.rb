```ruby
# Bubble sort 
# 09/24/2016 
# The Odin Project
# Advanced Building Blocks Project 1: Bubble Sort


def bubble_sort(arr)
	n = arr.length - 1
	n.times do 
		arr.each_with_index do | num, index |
			num_index = arr.index(num)
			sum = index + 1 
				if sum > n 
					break 
				end
			if arr[index] > arr[sum] 
					arr[index], arr[index + 1] = arr[index + 1], arr[index]
			else
				next
		end 
		
	end
	p arr
end

p arr
end 

x = []

10.times do 
	x << rand(1..100)
end 


p "THIS IS X #{x}"
 
bubble_sort(x)
