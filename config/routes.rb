Rails.application.routes.draw do
  
  get 'academies/show'
  get 'products/show'
  get 'projects/show'
  get 'courses/show'
  get 'quotes/show'
  get 'events/show'
  get 'events/index'
  get 'home/show'
  root 'home#show'
  resources :events, :only => [:show, :index]
  resources :downloads, :only => [:show, :index]

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
end
