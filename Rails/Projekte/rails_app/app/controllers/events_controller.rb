class EventsController < ApplicationController
	before_action :set_event, only: [:show, :edit, :update]
	def index
		@events = Event.all
	end

	def show
		
	end

	def new
		@event = Event.new
	end

	def create
		@event = Event.create(event_params)
		redirect_to events_path
	end

	def edit

	end

	def update

		@event.update(event_params)
		redirect_to events_path
	end

	private
		def set_event
			@event = Event.find(params[:id])
		end

		def event_params
			params.require(:event).permit(:name, :description, :location, :price, :start_date)
		end
end
