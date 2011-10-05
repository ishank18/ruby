def pascal(x)
	upper_layer = Array.new()
	lower_layer = Array.new()
	for i in 0..100
		upper_layer[i] = 0
		lower_layer[i] = 0
	end
	upper_layer[0] = 0
	upper_layer[1] = 1
	upper_layer[2] = 0
	lower_layer[0] = 0
	for i in 0..x+1
		for j in 1..i
			lower_layer[j] = upper_layer[j-1] + upper_layer[j]
			print lower_layer[j].to_s + " "
			upper_layer = lower_layer.dup
		end
				
		puts ""
		#p upper_layer
		#p lower_layer
		
	end		
			
end
pascal(6)
