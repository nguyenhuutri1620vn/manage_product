Rails.application.routes.draw do
  root "products#index"

  resources :products do
    resources :properties, only: [:edit, :update, :create, :destroy]
  end
  resources :category 
  resources :users
end
