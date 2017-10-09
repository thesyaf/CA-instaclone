Rails.application.routes.draw do
  resources :photos
  # get 'home/landing'

  root 'photos#index'

  devise_for :users

  resources :users do
    post 'follow',   to: 'socializations#follow'
    post 'unfollow', to: 'socializations#unfollow'
  end

  resources :categories, only: [:index] do
    post 'follow',   to: 'socializations#follow'
    post 'unfollow', to: 'socializations#unfollow'
  end

  get 'photos/:id/likes', to: 'photos#likes', as: :likes

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
