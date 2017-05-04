$user_name
$user_age
class User
	def set_user
		puts "Give me the user name: "
		$user_name = gets.chomp.to_s
		puts "Give me the user age(years): "
		$user_age = gets.chomp.to_i
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


user = User.new().set_user
Operations.new($user_age).calculate_age_in_minutes
