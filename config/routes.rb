Rails.application.routes.draw do
devise_for :users

    resource :user_preference
  resources :places
  resources :users
devise_scope :user do
  authenticated :user do
 root 'build_outing#index'
  end
  unauthenticated :user do
    root to: 'landing_page#index', as: :unauthenticated_root
  end
end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
