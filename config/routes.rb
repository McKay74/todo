Rails.application.routes.draw do
  # get 'item/index'

  # get 'item/new'

  # get 'item/create'

  # get 'item/update'

  # get 'item/show'

  # get 'item/destroy'

  # get 'item/edit'

  # get 'list/index'

  # get 'list/new'

  # get 'list/create'

  # get 'list/update'

  # get 'list/show'

  # get 'list/destroy'

  # get 'list/edit'

  # get 'home/index'

  resources :list

  root to: 'home#index'
end
