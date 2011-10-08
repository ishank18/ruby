def searchSen(input_string)
	reg_expr = /can/i
	puts input_string.gsub(reg_expr, "(can)")
	count = 0
	test_string = input_string.dup
	while(1)
		temp = test_string.dup
		test_string = test_string.sub(reg_expr, "*")
		if(temp == test_string)
			break
		else
			count += 1
		end	
	end	
	puts "Total Occurences found : "+count.to_s
end
searchSen("Can you can a can as a canner can can a can?");
