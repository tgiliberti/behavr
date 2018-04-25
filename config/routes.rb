Rails.application.routes.draw do

  resources :words
  resources :profiles, only: [:index, :show, :create, :new]
  resources :companies

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
