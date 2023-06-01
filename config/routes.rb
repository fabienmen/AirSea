Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :boats do
    resources :reservations, only: [:new, :create, :destroy]
    resources :reviews, only: [:new, :create]
    get :reviews, on: :member
  end
  resources :reservations, only: [:index]

  get "/my_boats", to: "boats#user_index"
end
