Rails.application.routes.draw do
  get 'pages/show'
  get 'home/show'
  resources :pages, only: [:show]
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  root 'home#show'
end
