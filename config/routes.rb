Rails.application.routes.draw do
  get '/' => "users#index"

  resources :users, only: [:index, :show, :new, :create, :destroy]
  resources :products, only: [:index, :show, :new, :create, :destroy]
end
