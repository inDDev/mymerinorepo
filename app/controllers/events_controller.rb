class EventsController < ApplicationController
	def show
		@event = Event.find(params[:id])
		@events = Event.all
	end
end
