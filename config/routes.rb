Rails.application.routes.draw do
  
  get 'home/show'
  root 'home#show'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
end
