def pascal(x)
	yield x			
end
pascal(6){|x| upper_layer = Array.new()
	lower_layer = Array.new()
	for i in 0..100
		upper_layer[i] = 0
		lower_layer[i] = 0
	end
	upper_layer[0] = 0
	upper_layer[1] = 1
	upper_layer[2] = 0
	for i in 1..x+1
		for j in 1..i
			lower_layer[j] = upper_layer[j-1]+ upper_layer[j]
			print lower_layer[j].to_s + " "					
		end
		if(i != 0)
			upper_layer = lower_layer.dup	
		end
		puts ""		
	end }
	
