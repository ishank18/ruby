def factorial(n)
	begin 
		if(n < 0)
			raise ArgumentError.new("Exception : Please pass a positive number")
		else
			fact = 1
			(1..n).each do |i|
				fact = fact * i
			end
			return fact
		end
		rescue ArgumentError => err
			p err.to_s
	end					
end		
puts factorial(6)
		
