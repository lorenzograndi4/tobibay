Rails.application.routes.draw do

  get 'users/update'

  root to: 'products#index'
  devise_for :users

  resources :users  do
      resources :carts, only: [:index, :show]
  end

  resources :profiles, only: [:new, :create, :show, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :products
  
  namespace :api do
    resources :users  do
      resources :carts, only: [:create, :update, :destroy]
    end
  end

end
