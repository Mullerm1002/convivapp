Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/about', to: 'pages#about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :offers do
    resources :reservations, only: [:new, :create]
  end
  post '/reservations/:id/deny', to: 'reservations#deny', as: 'reservation_deny'
  post '/reservations/:id/accepted', to: 'reservations#validate', as: 'reservation_validate'

  resources :reservations, only: [:index]
  #, only: [:destroy, :index]
  resources :chatrooms, only: [:show, :index] do
    resources :messages, only: :create
  end

end
