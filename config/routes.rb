Rails.application.routes.draw do
  

  resources :users
  resources :posts
  resources :comments
  resources :userfriends

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
