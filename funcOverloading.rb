def area(*args)
	if(args.size == 1)
		a = (22.0/7)*args[0]*args[0]
		return a
	elsif(args.size == 2)
		a = args[0]*args[1]
		return a
	elsif(args.size == 3)
		s = 0.0
		s = ((args[0] + args[1] + args[2])/2.0)
		a = Math.sqrt(s*(s - args[0])*(s - args[1])*(s - args[2]))
		return a
	else
		return "Function not set for Arguments greater than 3"
	end	
end
puts "Area of Circle is #{area(5)}"
puts "Area of Rectangle is #{area(5, 7)}"
puts "Area of Traingle is #{area(5, 7, 3)}"
