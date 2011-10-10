def sumTime(*args)
	regEx = /(([0-1][0-9])|(2[0-3])|([0-9])):(([0-5][0-9])|([0-9])):(([0-5][0-9])|([0-9]))/
	array_t1 = Array.new
	array_t2 = Array.new
	array_sum = [0,0,0]
	i = 0
	days = 0
	while i < args.length
		if args[i].sub(regEx, "t1") == "t1"
			array_t1 = args[i].split(":")
			h1 = array_t1[0].to_i
			m1 = array_t1[1].to_i
			s1 = array_t1[2].to_i
			carry_min = 0
			carry_hour = 0
			s = s1 + array_sum[2]
			if(s>60)
				while s>60
					s -= 60
					carry_min += 1
				end
			end	
			array_sum[2] = s
			m = m1 + array_sum[1] + carry_min
			if(m>60)			
				while m>60
					m -= 60
					carry_hour += 1
				end
			end	
			array_sum[1] = m
			h = h1 + array_sum[0] + carry_hour
			if(h>23)
				while h>23
					h -= 24
					days += 1
				end
			end	
			array_sum[0] = h
			i += 1
		else
			puts "Please enter a valid time format"
		end	
	end
	puts "Sum = #{days} days & #{array_sum[0]}:#{array_sum[1]}:#{array_sum[2]}"
end
sumTime("11:23:07","22:53:45","0:23:23","23:45:56") 	
