def sumTime(t1, t2)
	regEx = /(([0-1][0-9])|(2[0-3])):[0-5][0-9]:[0-5][0-9]/
	array_t1 = Array.new
	array_t2 = Array.new
	if t1.sub(regEx, "t1") == "t1" && t2.sub(regEx, "t2") == "t2"
		array_t1 = t1.split(":")
		array_t2 = t2.split(":")
		h1 = array_t1[0].to_i
		m1 = array_t1[1].to_i
		s1 = array_t1[2].to_i
		h2 = array_t2[0].to_i
		m2 = array_t2[1].to_i
		s2 = array_t2[2].to_i
		carry_min = 0
		carry_hour = 0
		carry_day = 0
		s = s1 + s2
		if(s > 60)
			s -= 60
			carry_min += 1
		end	
		m = m1 + m2 + carry_min
		if(m > 60)
			m -= 60
			carry_hour += 1
		end
		h = h1 + h2 + carry_hour
		if(h > 23)
			h -= 24
			carry_day += 1
		end
		if(carry_day == 1)
			print carry_day.to_s + " days & "
		end
		if(h<10)
			print "0"+h.to_s + ":"
		else
			print h.to_s + ":"
		end
		if(m<10)
			print "0"+m.to_s + ":"
		else
			print m.to_s + ":"
		end
		if(s<10)
			print "0"+s.to_s
		else
			print s.to_s
		end			
 		puts ""	
	else
		puts "Please enter a valid time format"
	end		
end
sumTime("12:00:00","12:00:00") 	
