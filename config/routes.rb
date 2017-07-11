Rails.application.routes.draw do

  root to: 'products#index'
  devise_for :users

  resources :users  do
    resources :carts, only: [:create, :show, :destroy]
    resources :profile, only: [:create, :show, :edit]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :products, only: [:index, :show, :destroy]
end
