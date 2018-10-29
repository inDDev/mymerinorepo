class EventsController < ApplicationController
	def show
		@event = Event.find(params[:id])
	end

	def index
		@events = Event.all.order('created_at DESC')
	end
end
