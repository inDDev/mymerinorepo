Rails.application.routes.draw do
  
  get 'event/show'
  get 'home/show'
  root 'home#show'
  resources :events

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
end
