Rails.application.routes.draw do
  get 'paniers/index', as: "panier"

  get 'items/index'

  get 'items/show'
  root "items#index"

  resources :items
  devise_for :users, controllers: { registrations: "users/registrations" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
