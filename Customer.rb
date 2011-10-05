class Customer
	@@an = 0
	attr_accessor :name, :balance, :account_no;
	def initialize(name)
		@@an = @@an + 1;
 		@name = name;
		@balance = 1000;
		@account_no = @@an;
	end
	def deposit(amount)
		@balance = @balance + amount;
		puts "#{@name} -> Deposited : "+amount.to_s+" - Available Balance : #{@balance}";
	end
	def withrawal(amount)
		if(@balance < amount)
			puts "#{@name} -> Withrawal : "+amount.to_s+" - Status : Unsufficient Balance" ;
		else
			@balance = @balance - amount;
			puts "#{@name} -> Withrawal : "+amount.to_s+" - Available Balance : #{@balance}";
		end
	end
	def to_s
		puts "Name : #{@name}, Balance : #{@balance}, Account Number : #{@account_no}";
	end
end
while
	print "Do you want to continue?(y/n)"
	option = gets.chomp
	if(option == n)
		break
	else
		name = gets.chomp
		
		
end
c1 = Customer.new("Ishank")
c2 = Customer.new("Bharat")
c3 = Customer.new("Jaggi")
c4 = Customer.new("Mayank")
c5 = Customer.new("Shree")
c6 = Customer.new("Krishna")
p c1
p c2
p c3
p c4
p c5
c5.deposit(500)
c5.deposit(200)
c5.withrawal(300)
puts ""
p c5
p c6	
