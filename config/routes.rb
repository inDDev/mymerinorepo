Rails.application.routes.draw do
  
  get 'events/show'
  get 'events/index'
  get 'home/show'
  root 'home#show'
  resources :events, :only => [:show, :index]

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
end
