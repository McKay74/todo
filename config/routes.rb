Rails.application.routes.draw do

  resources :list

  root to: 'home#index'
end
