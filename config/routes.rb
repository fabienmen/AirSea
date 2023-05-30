Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :boats, only: [:index, :new, :create, :show, :edit, :destroy] do
    resources :reservations, only: [:new, :create, :destroy]
    resources :reviews, only: [:new, :create]
  end

  resources :reservations, only: [:index]
end
