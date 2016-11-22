class EventsController < ApplicationController
	def index
		@events = %w(Weihnachtsmannkillen Christkindabschaffen Pfeiferauchen)
	end
end
