Rails.application.routes.draw do

  get 'users/update'

  root to: 'products#index'
  devise_for :users

  resources :users  do
    namespace :api do
      resources :carts, only: [:index, :new, :create, :show, :destroy, :update]
    end
  end

  resources :profiles, only: [:new, :create, :show, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :products, only: [:index, :show, :destroy]
end
