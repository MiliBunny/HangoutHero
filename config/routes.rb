Rails.application.routes.draw do
devise_for :users

    resource :user_preference
  resources :places
  root to: "places#index"
  resources :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
