require "sinatra"
require "./carclass"

get "/" do
	erb :index
end

post "/carstatus" do
	
	year = params[:year]
	#initiate and calculate the car class
	#and then display it on the car status page
	@c = Car.new(year)

	erb :carstatus
end