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
		j = 0
		odd = 0
		even = 0
		has_key_even = 1
		has_key_odd = 1
		while j != array_hash_keys.length
			temp = Array.new
			if((array_hash_keys[j]%2) == 1)
				array_hash_keys.each do |ahk_identifier|
					if(ahk_identifier == "Odd")
						has_key_odd=0
					end
				end
				if(has_key_odd == 1)
					temp[0] = array_hash[array_hash_keys[j]]
					inject_hash["Odd"] = temp
					has_key_odd = 0
				else
					temp = inject_hash["Odd"]
					temp[inject_hash["Odd"].length] = array_hash[array_hash_keys[j]]
					inject_hash["Odd"] = temp
				end
				odd +=1
			else
				
				array_hash_keys.each do |ahk_identifier|
					if(ahk_identifier == "Even")
						has_key_even=0
					end
				end

				if(has_key_even == 1)
					temp[0] = array_hash[array_hash_keys[j]]
					inject_hash["Even"] = temp
					has_key_even = 0
				else
					temp = inject_hash["Even"]
					temp[inject_hash["Even"].length] = array_hash[array_hash_keys[j]]
					inject_hash["Even"] = temp
				end
				even +=1
			end
			j = j+1;	
		end
		puts odd
		puts even
		
		p inject_hash
		p array_hash
	end
end
['abc', 'def', 1234, 234, 'abcd', 'x', 'mnop', 5, 'zZzZ'].arrayHash
