class EventsController < ApplicationController
	before_action :set_event, only: [:show, :edit, :update, :destroy]
	before_action :require_signin, :except => [:index]
	before_action :require_admin, :except => [:index, :show]
	
	def index
		@events = Event.all
	end

	def show
		@likers = @event.likers
		@categories = @event.categories
	end

	def new
		@event = Event.new
	end

	def create
		@event = Event.new(event_params)
		if @event.save
			redirect_to events_path
		else
			render :new
		end
	end

	def edit
	end

	def update
		@event.update(event_params)
		redirect_to events_path
	end

	def destroy
		@event.destroy
		redirect_to events_path
	end

	private


		def set_event
			@event = Event.find(params[:id])
		end

		def event_params
			params.require(:event).permit(:name, :description, :location, :price, :start_date, :category_ids => [])
		end
end
