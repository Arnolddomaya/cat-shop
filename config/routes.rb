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
  get "/remove",     to: "adding#destroy"

  post   "/order",       to: "orders#create"
  get    "/order",       to: "orders#create"
  get "orders/index", as: "orders_list"
end
