Rails.application.routes.draw do

  resources :users do
	  resources :posts
	  resources :comments
	  resources :userfriends
	end
  get '/' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
