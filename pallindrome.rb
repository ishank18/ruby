while 
	input_string = gets.chomp
	if input_string == "q" || input_string == "Q"
		break;
	else
		i = input_string.length - 1
		j = 0
		pallin = 1
		while i >= 0
			if input_string[i] != input_string[j]
				pallin = 0
			end
			i = i-1
			j = j+1
		end
		if pallin == 1
			puts input_string + " is pallindrome"	
		else
			puts input_string + " is not pallindrome"	
		end
	end
end
