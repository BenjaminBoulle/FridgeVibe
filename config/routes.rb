Rails.application.routes.draw do
  devise_for :users
  root to: "fridges#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :fridges, only: %i[index show] do
    resources :ingredients
  end
  resources :ingredients, only: %i[destroy]

  resources :recipes do
    resources :reviews, only: %i[index new create]
  end
  resources :reviews, only: %i[destroy]
end
