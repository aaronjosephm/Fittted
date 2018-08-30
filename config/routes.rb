Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users

  # devise_scope :user do
  #   root to: "devise/sessions#new"
  #   post '/', to: "devise/sessions#create"
  # end

  root to: 'pages#landing'


  get 'home', to: "pages#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'theme', to: "pages#theme"

  resources :outfits, only: [ :index, :show ] do
  end

  patch 'users/:id', to: "users#set_preferences", as: "set_preferences"

  post 'outfits/:outfit_id/order', to: "order_outfits#create", as: "create_outfit_order"

  delete 'orders/:id', to: "order_outfits#destroy", as: "delete_outfit_order"

  get 'orders/:id', to: "orders#show", as: "order_show"

  get 'orders', to: "orders#index", as: "order_all"

  patch 'orders/:id', to: "orders#update", as: "update_order"

  post 'orders', to: "order_outfits#create"

  delete 'orders', to: "orders#destroy", as: "delete_order"

  delete 'order_outfits/:id', to: "order_outfitss#destroy"

  get 'order/:order_id/payments/new', to: 'payments#new', as: 'new_payments'

  post 'order/:order_id/payments', to: 'payments#create', as: 'payments'

end
