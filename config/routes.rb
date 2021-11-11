Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/about', to: 'pages#about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :offers do
    resources :reservations, only: [:new, :create]
  end

  resources :reservations
  #, only: [:destroy, :index]
  resources :chatrooms, only: [:show, :index] do
    resources :messages, only: :create
  end

end
