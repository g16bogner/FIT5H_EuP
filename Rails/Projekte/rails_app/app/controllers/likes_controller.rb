class LikesController < ApplicationController
	def create
		@event = Event.find(params[:event_id])
		unless Like.where(user_id: current_user.id, event_id: @event.id).any?
			@event.likes.create(user_id: current_user.id)
			redirect_to @event, notice: "Event wurde geliked"
		else
			redirect_to @event, alert: "Mehrmals-Like is not really möglich"
		end

	end
	def destroy
		@like = Like.find(params[:id])
		@like.delete
		redirect_to event_path(params[:event_id]), alert: "Du hast erfolgreich deinen Missmut ausgedrückt. Toller Junge!"
	end
end
