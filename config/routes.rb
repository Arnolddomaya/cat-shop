Rails.application.routes.draw do
  get 'paniers/index', as: "panier"

  get 'items/index'

  get 'items/show'
  root "items#index"

  resources :items
  devise_for :users, controllers: { registrations: "users/registrations" }



  post   "/add",       to: "adding#create"
  get    "/add",       to: "adding#create"
  delete "/remove",     to: "adding#destroy"

end
