Rails.application.routes.draw do
    resources :books do
      resources :reservations
      resources :reviews, only: [:create, :destroy]
    end
  devise_for :users
  root to: "books#index"
  get 'my_books', to: 'books#my_books'
  get 'my_reservations', to: 'reservations#my_reservations'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check
  # resources :reviews
  # Defines the root path route ("/")
  # root "posts#index"
  # resources :books
end
