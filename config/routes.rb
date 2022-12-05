Rails.application.routes.draw do
  devise_for :users
  root to: "fridges#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :fridges, only: %i[index show] do
    resources :ingredients
    resources :recipes, only: %i[index show] do
      resources :reviews, only: %i[index new create]
    end
  end
  resources :ingredients, only: :destroy

  resources :recipes, except: %i[index show]
  resources :reviews, only: :destroy
end
