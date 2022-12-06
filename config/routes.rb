Rails.application.routes.draw do
  devise_for :users
  root to: "fridges#index"

  resources :fridges, only: %i[index show] do
    resources :ingredients, except: :destroy
    delete "fridges/:fridge_id/ingredients", to: "ingredients#destroy_all", as: "coustom"
    resources :recipes, only: %i[index show] do
      resources :reviews, only: %i[index new create]
    end
  end
  resources :ingredients, only: :destroy

  resources :recipes, except: %i[index show]
  resources :reviews, only: :destroy
end
