Rails.application.routes.draw do

  resources :lists

  root to: 'home#index'
end
