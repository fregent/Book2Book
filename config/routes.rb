Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  get     "books",                    to: "books#index"
  get     "books/new",                to: "books#new",    as: :new_book
  post    "books",                    to: "books#create"
  get     "books/:id",                to: "books#show",   as: :book
  get     "books/:id/edit",           to: "books#edit",   as: :edit_book
  patch   "books/:id",                to: "books#update"
  delete  "books/:id",                to: "books#destroy"
end
