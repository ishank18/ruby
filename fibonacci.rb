def fibonacci()
	yield(1000)
	return 0
end
fibonacci() { |x| a=1;
b=1; 
c=0; 
puts a;
puts b; 
while(c)
	c = a + b;
	b = a;
	a = c;
	if(c > x) 
		break; 
	else 
		puts c;
	end 
end 
} 
	
