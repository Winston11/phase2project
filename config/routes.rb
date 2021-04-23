Rails.application.routes.draw do
  resources :reviews
  resources :selections
  resources :streaming_services
  resources :users
  resources :user_services
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :new, :edit, :show, :update, :delete]
  resources :reviews, only: [:index, :new, :edit, :show, :delete]
  resources :streaming_services, only: [:index, :show, :update]
  resources :selection, only: [:index, :show, :update]
  resources :user_services, only: [:index, :new, :edit, :show, :update, :delete]

  
  
  # get '/user/new', to: users#new
  get "sign_up", to: "user#new"
  # users_path
  get	"/users", to: "users#index"
  # new_user_path
  get "/users/new", to: "users#new"
  # edit_user_path
  get "/users/:id/edit", to: "users#edit"
  # user_path
  get "/users/:id", to: "users#show"


  # get "/reviews" to: "reviews#index"

end
