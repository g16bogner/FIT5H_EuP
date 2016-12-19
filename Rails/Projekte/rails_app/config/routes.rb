Rails.application.routes.draw do
  resources :registrations
  resources :events do 
  	member do
  		get 'short'
  	end
  	collection do 
  		post 'toggle'
  	end
  end
end
