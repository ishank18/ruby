def charCount(input_string)
	count_lc = 0
	count_uc = 0
	count_num = 0
	count_sc = 0
	range_lowercase = "a".."z"
	range_uppercase = "A".."Z"
	range_numbers = "0".."9"
	i = 0
	while i < input_string.length
		if(range_lowercase.include?(input_string[i]))
			count_lc += 1
		elsif(range_uppercase.include?(input_string[i]))
			count_uc += 1
		elsif(range_numbers.include?(input_string[i]))
			count_num += 1
		else
			count_sc += 1
		end
		i += 1
	end	
	puts "\nString : " + input_string 
	puts "\nNumber of lower case : " + count_lc.to_s
	puts "Number of upper case : " + count_uc.to_s
	puts "Number of number : " + count_num.to_s
	puts "Number of number : " + count_sc.to_s	
end
charCount("Hello Mr. 0900992ysyys0hshHJ")

