Rails.application.routes.draw do
  root "frontend#index"
  
  resources :products do
    resources :properties, only: [:edit, :update, :create, :destroy]
  end
  resources :category 
  resources :users
end
