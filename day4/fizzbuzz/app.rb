require "sinatra"

#use GET to display the first page
get "/" do
	erb :index
end

#use POST to take the data from index and put it into the params hash
post "/fizzbuzz" do
		#get the variables for fizzbuzz from the array from params hash
		@first_number = params[:first_number]
		@second_number = params[:second_number]
		
	
		@fizzbuzz_array = []
		
		for x in 1..100
			if x % @first_number.to_i == 0 && x % @second_number.to_i == 0
				 @fizzbuzz_array << "FizzBuzz"
			elsif 
				x % @first_number.to_i == 0
				@fizzbuzz_array << "Fizz"
			elsif
				x % @second_number.to_i == 0
				@fizzbuzz_array << "Buzz"
			else
				@fizzbuzz_array << x
			end
		end

		erb :fizzbuzz
end







