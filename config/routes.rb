Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#landing'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'style_page', to: "pages#style_page"

  get 'theme', to: "pages#theme"

  get 'outfits', to: "outfits#index"

  get 'outfits/:id', to: "outfits#show"

  get 'orders/:id', to: "orders#show"

  patch 'orders/:id', to: "orders#update"

  post 'order_items', to: "order_items#create"

  delete 'order_items/:id', to: "order_items#destroy"
end
