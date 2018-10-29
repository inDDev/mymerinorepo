class HomeController < ApplicationController
	def show
	 	@events = Event.all
	 	@products = Product.all
	end
end
