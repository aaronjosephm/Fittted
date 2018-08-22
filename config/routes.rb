Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'theme', to: "pages#theme"

  resources :outfits, only: [ :index, :show ] do
  end

  post 'outfits/:outfit_id/order', to: "order_outfits#create", as: "create_outfit_order"

  get 'orders/:id', to: "orders#show", as: "order_show"

  patch 'orders/:id', to: "orders#update"

  post 'orders', to: "order_outfits#create"

  delete 'order_outfits/:id', to: "order_outfitss#destroy"
end
