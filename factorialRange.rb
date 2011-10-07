def factorial(num)
	range = 1..num
	product = 1
	range.each do |n|
		product = product * n
	end
	return product
end
puts factorial(7)		
	
