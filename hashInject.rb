class Array
	def arrayHash
		array_hash = Hash.new
		array_identifier = self
		for i in 0...array_identifier.length
			temp = Array.new()
			length_ah = 0
			array_hash_keys = array_hash.keys
			if(array_identifier[i].class == Fixnum)
				num_to_string = array_identifier[i].to_s
				length_ah = num_to_string.length
			else
				length_ah = array_identifier[i].length
			end
			has_key = 0
			array_hash_keys.each do |ahk_identifier|
				if(ahk_identifier == length_ah)
					has_key=1
				end
			end
			if(has_key == 0)
				temp[0] = array_identifier[i]
				array_hash[length_ah] = temp
			else
				temp = array_hash[length_ah]
				temp[array_hash[length_ah].length] = array_identifier[i]
				array_hash[length_ah] = temp
			end
		end
		inject_hash = Hash.new
		array_hash_keys = array_hash.keys
		odd = Array.new
		even = Array.new
		array_hash_keys.inject(0) {|result, current_element| 
			if(current_element%2 == 0)
				even[even.length] = array_hash[current_element]
				inject_hash["Even"] = even
			else
				odd[odd.length] = array_hash[current_element]
				inject_hash["Odd"] = odd
			end
		current_element }
		p inject_hash
	end
end
['abc', 'def', 1234, 234, 'abcd', 'x', 'mnop', 5, 'zZzZ'].arrayHash
