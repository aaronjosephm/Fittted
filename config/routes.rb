Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#landing'

  get 'home', to: "pages#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'theme', to: "pages#theme"

  resources :outfits, only: [ :index, :show ] do
  end

  post 'outfits/:outfit_id/order', to: "order_outfits#create", as: "create_outfit_order"

  delete 'orders/:id', to: "order_outfits#destroy", as: "delete_outfit_order"

  get 'orders/:id', to: "orders#show", as: "order_show"

  get 'orders', to: "orders#index", as: "order_all"

  patch 'orders/:id', to: "orders#update", as: "update_order"

  post 'orders', to: "order_outfits#create"

  delete 'order_outfits/:id', to: "order_outfitss#destroy"

  get 'order/:order_id/payments/new', to: 'payments#new', as: 'new_payments'
  post 'order/:order_id/payments', to: 'payments#create', as: 'payments'

end
