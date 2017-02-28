Rails.application.routes.draw do
  
	root 'authors#index'
	get 'signup' => 'users#new'
	resource :session
  resources :users do
  	resources :lendings
  end
	resources :authors do
	 	resources :books
	end
 end
