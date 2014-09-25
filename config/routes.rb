Rails.application.routes.draw do

  devise_for :users

  resources :lists do
    resources :items, only: [:create, :destroy]
  end

  root to: 'home#index'
end
