class Interest
	def initialize(*args)
		@p = args[0]
		@t = args[1]
		@r = 10.0
	end
	def diff
		si = (@p*@r*@t)/100
		i = 0 
		exp = (1 + (@r/100))
		product_exp = 1.0
		while i <= @t - 1
			product_exp = product_exp * exp
			i = i + 1
		end
		ci_sum = @p * product_exp
		ci = ci_sum - @p
		d = ci - si
	end
		
end
obj = Interest.new(1000, 3)		
puts "Difference between CI and SI = #{obj.diff}"
