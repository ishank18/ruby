def factUsingStep(n)
	3.step(n,1) { |i|
		prime = 0 
		for j in 2..i/2
			if(i%j == 0)
				prime = 1
			end
		end	
		if (prime == 0)
			print i.to_s + " "
		end	
	}
	puts "";
end
factUsingStep(100)
