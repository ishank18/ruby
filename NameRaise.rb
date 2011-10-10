class Name
	def initialize(*args)
		begin
			@firstname = args[0]
			@lastname = args[1]
			if(@firstname == nil || @firstname == "" || @lastname == nil || @lastname == "")
				raise ArgumentError.new("Exception : Fields can not be null")
			end
			reg_ex = /^[A-Z]{1}/
			if(@firstname =~ reg_ex)
				puts "Values Initialized"
			else
				raise ArgumentError.new("Exception : First letter of firstname must be capital")
			end		
			rescue ArgumentError => err
				p err.to_s
		end			
	end	
end
Name.new("Hello", "World")
