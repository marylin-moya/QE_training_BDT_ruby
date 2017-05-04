#Create a ruby class with 1 method :
# * Insert user name and Age ,ask by prompt.
#Create another ruby class with 1 method to :
# * Calculate and print the age in minutes, this “age” is going to receive as a parameters of the class
#1. Instance the class to get the values of the first method and assign this value to a variable.
#2. This variable needs to be send to the instance of the second class as a parameter to perform the calculation.


class User
	def initialize user_name, user_age
		@name_user = user_name
		@age_user = user_age
	end

	def get_age_user
		@age_user
	end
end

class Operations
	def initialize age
		puts "Initialize Operations"
		@age = age
	end
	def calculate_age_in_minutes
		puts "The age in minutes is #{@age * 365 * 24 * 60}"
	end
end

puts "Give me the user name: "
user_name = gets.chomp.to_s
puts "Give me the user age(years): "
user_age = gets.chomp.to_i

user = User.new(user_name, user_age)
Operations.new(user.get_age_user).calculate_age_in_minutes
