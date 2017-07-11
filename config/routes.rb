Rails.application.routes.draw do
  devise_for :users do
    resources :carts [:new, :create, :show]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :products, only: [:index, :show, :destroy]
end
