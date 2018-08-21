Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'theme', to: "pages#theme"

  get 'outfits', to: "outfits#index"

  get 'outfits/:id', to: "outfits#show"

  get 'orders/:id', to: "orders#show"

  patch 'orders/:id', to: "orders#update"

  post 'order_outfits', to: "order_outfits#create"

  delete 'order_outfits/:id', to: "order_outfitss#destroy"
end
