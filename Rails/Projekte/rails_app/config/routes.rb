Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "events" => "events#index"
  get "events/:id" => "events#show"

  #resources :events
end
