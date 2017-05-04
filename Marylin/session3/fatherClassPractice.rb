#Using class variables Create a class named father
#1. father should have some amount of money. 
#2. Add 3 different child classes that are going to take some of the money.
#3. Print the amount that each child is taking
#4. Print the amount of money that Father have at the end.


class Father
	def initialize money
		@money = money
	end

	def get_money(quantity)
		@money = @money - quantity
	end
end

class Child
	def initialize money		
		@money = money
	end
	def calculate_age_in_minutes
		puts "The age in minutes is #{@age * 365 * 24 * 60}"
	end
end

puts "Initialize father money: "
father_money = gets.chomp.to_i
father = Father.new(father_money)

child1 = Child.new
puts "Give me the user age(years): "
user_age = gets.chomp.to_i

user = User.new(user_name, user_age)
Operations.new(user.get_age_user).calculate_age_in_minutes
