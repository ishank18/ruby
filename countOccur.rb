input_string = gets.chomp
i = 0
op_hash = Hash.new
while i != input_string.length
	j = 0;
	op_hash_keys = op_hash.keys
	presence = 0;
	while j != op_hash_keys.length
		if input_string[i] == op_hash_keys[j]
			presence = 1;
		end
		j = j+1;	
	end
	if(presence == 0)
		op_hash[input_string[i]] = 1;
	else
		op_hash[input_string[i]] = op_hash[input_string[i]] + 1;
	end
	i = i+1;
end
puts op_hash
