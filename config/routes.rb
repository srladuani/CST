Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :tickets
  namespace :admin do
    resources :users
    root to: "users#index"
  end
  root to: 'tickets#index'
  devise_for :users
end
