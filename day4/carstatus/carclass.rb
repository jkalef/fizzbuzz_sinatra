#build my car class that accepts a year, prints out if it's 
#old new or whatever with Case statement
class Car

	attr_accessor :year

	def initialize(year)
		@year = year.to_i
	end


	def car_age
		case 
			when year > 2015
				"this car is from the future"
			when year <= 2015 && year >= 2010
				"this car is new-ish"
			when year < 2010
				"this car is ancient"
			end
	end



end