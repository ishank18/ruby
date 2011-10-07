def revString(input_string)
	input_string = " " + input_string
	i = input_string.length
	output_string = String.new()
	end_limit = input_string.length
	while i >= 0
		if(input_string[i] == " ")
			for j in i+1...end_limit
				output_string = output_string + input_string[j].to_s
			end
			output_string += " "
			end_limit = i
		end
		i -= 1
	end
	return output_string
end
puts revString("An apple a day keeps the doctor away")
