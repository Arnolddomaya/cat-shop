Rails.application.routes.draw do
  get 'items/index'

  get 'items/show'
  root "items#index"

  resources :items 
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
