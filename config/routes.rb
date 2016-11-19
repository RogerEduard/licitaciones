Rails.application.routes.draw do
  get 'pages/index'
  root 'pages#index'

  resources :subscriptions
  resources :oportunities
  resources :companies
  resources :categories
  resources :customers
  # archivo de rutas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
