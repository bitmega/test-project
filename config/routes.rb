Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'equipment#index'

  resources :equipment do
    resources :equipment_images, shallow: true
  end

end
