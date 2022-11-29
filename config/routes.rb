Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :fridges, only: %i[index show]
  resources :recipes do
    resources :reviews, only: %i[index new create]
  end
  resources :reviews, only: %i[destroy]
  resources :ingredients
end
