class Vehicle
	attr_accessor :price;
	def initialize(name, price)
		@name = name;
		@price = price
	end
	def to_s
		print "Name = #{@name}, Price = #{@price}";
	end
end
class Bike < Vehicle
	def initialize(name, price, dealer)
		super(name, price)
		@dealer = dealer
	end
	def to_s
		super
		print ", Dealer = #{@dealer}";
	end
end
b1 = Bike.new("FZ-S", 75000, "ishank")
b1.price = 72000;
p b1

