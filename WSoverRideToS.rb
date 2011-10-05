class String

	@@i = 0
	
	def to_s
		str = ""+initialize()+""
		i = 0
		while(i < str.length)
			ascii_code = str[i].ord
			if (ascii_code >= 65 && ascii_code <= 90) || (ascii_code >= 97 && ascii_code <= 122)
				if ascii_code <97
					ascii_code = ascii_code + 32
					print ascii_code.chr
				else
					ascii_code = ascii_code - 32
					print ascii_code.chr
				end
			else
				print str[i]
			end
			i = i+1
		end
		puts ""
	end
end
"hello WORLD".to_s

