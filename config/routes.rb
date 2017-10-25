Rails.application.routes.draw do
  root 'welcome#index'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users, only: [:new, :create, :show] do
    resources :gifs, only: [:index, :create, :destroy]
  end

  resources :categories, only: [:index, :show]

  resources :gifs, only: [:index]

  namespace :admin do
    resources :categories, only: [:new, :create]
    resources :gifs, only: [:new, :create, :destroy]
  end
end
