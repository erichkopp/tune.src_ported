Rails.application.routes.draw do

  resources :tunes do
  	resources :comments
  end

  resources :users, only: [:show]

  devise_for :users

  root to: 'tunes#index'
    
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
