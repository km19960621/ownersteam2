Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root 'orders#index'

  get 'sessions/new'

  resources :users
  get 'users/:id/cards', to: 'users#cards'
  get 'users/:id/orders', to: 'users#orders'
  get 'users/:id/orders-2010', to: 'users#orders_2010'
  get 'users/:id/orders-2011', to: 'users#orders_2011'
  get 'users/:id/orders-2012', to: 'users#orders_2012'
  get 'users/:id/orders-2013', to: 'users#orders_2013'
  get 'users/:id/orders-2014', to: 'users#orders_2014'
  get 'users/:id/orders-2015', to: 'users#orders_2015'

  resources :cards

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
