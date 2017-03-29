module Conversions
	def Conversions.convert_millimeters_to_centimeters(millimeters)
		millimeters/10
	end
	def Conversions.convert_centimeters_to_meters(centimeters)
		centimeters/100
	end
	def Conversions.convert_meters_to_kilometers(meters)
		meters/1000
	end
end

class Registration
	include Conversions
	def initialize()
		puts "Initialize all values null/empty"
    	@user_name = ""
    	@user_id = ""
    	@quantity = 0
    	@registration_list = Hash.new
    end

    def add_user
    	puts "Type a user name: "
    	@user_name = gets.chomp.to_s
    	#case @user_name
    	# when /^[A-Z]{10}$/
    	 	puts "Type the user id: "
    		@user_id= gets.chomp.to_s
    	#end
    	@registration_list[@user_id] = @user_name
    end
    def request_quantity    	
    	while @quantity < 3 or @quantity > 15
    		puts "Type the users quantity: "
    		@quantity = gets.chomp.to_i    		
    	end
    	@quantity
    end
end

def select_convertion_option
	puts "Convertion Options"
	puts "a) From millimeters to centimeters"
	puts "b) From centimeters to meters"
	puts "c) From meters to kilometers"

	option_selected = gets.chomp.to_s
end

#use to_f if you convert unexact values
def converts(option)
	if option == "a"
		puts "Insert the value in mm :"
		millimeters = gets.chomp.to_i
		centimeters = Conversions.convert_millimeters_to_centimeters millimeters
		puts "#{millimeters} mm represent #{centimeters} cm"
	elsif option == "b"
		puts "Insert the value in cm :"
		centimeters = gets.chomp.to_i
		meters = Conversions.convert_centimeters_to_meters centimeters
		puts "#{centimeters} cm represent #{meters} mt"
	elsif option == "c"
		puts "Insert the value in mt :"
		meters = gets.chomp.to_i
		kilometers = Conversions.convert_meters_to_kilometers meters
		puts "#{meters} mt represent #{kilometers} km"
	else
		puts "Unsupported option"
	end

end

#User class
registration = Registration.new
total_users = registration.request_quantity
while total_users > 0
	registration.add_user
	total_users -= 1
end

# Convert methods
convert_option = select_convertion_option
converts(convert_option)
