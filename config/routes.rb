Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  get 'auth/:provider/callback', to: 'session#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :offers do
    resources :reservations, only: [:new, :create]
  end
  resources :reservations, only: [:destroy, :index]

end
