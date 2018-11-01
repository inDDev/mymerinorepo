class HomeController < ApplicationController
	def show
	 	@events = Event.all
	 	@products = Product.all
	 	@quotes = Quote.all
	end
end
