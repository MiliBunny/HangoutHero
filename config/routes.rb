Rails.application.routes.draw do
    devise_for :users
    resources :user_preferences
  resources :places
  root to: "places#index"
  resources :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
