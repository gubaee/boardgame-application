Rails.application.routes.draw do

  resources :games
  root 'sessions#welcome'
  resources :users, only: [:new, :create]
  get 'login', to: 'sessions#new'
  delete 'logout', to: 'sessions#destroy'
  get 'logout', to: 'sessions#destroy'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'

  get 'sessions', to: 'sessions#show'
  post 'sessions', to: 'sessions#show', as: :sessions_show
  get 'authorized', to: 'sessions#page_requires_login'

  get 'avalons', to: 'avalons#show', as: :avalon

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
