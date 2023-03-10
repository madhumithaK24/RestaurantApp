Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/", to: "home#index"

  get "/menu_categories", to: "menu_categories#index"
  post "/menu_categories", to: "menu_categories#create", as: :create_menu_category
  put "/menu_categories/:id", to: "menu_categories#update"
  delete "/menu_categories/:id", to: "menu_categories#destroy"

  get "/new_menu_item", to: "menu_items#new", as: :new_menu_item
  get "/create_menu_item", to: "menu_items#create", as: :create_menu_item
  put "/menu_items/:id", to: "menu_items#update"
  delete "/menu_items/:id", to: "menu_items#destroy"

  get "cart_items", to: "cart_items#index"
  post "cart_items", to: "cart_items#create"
  delete "/clear_cart_items", to: "cart_items#destroy", as: :cart_clear
  put "/cart_items", to: "cart_items#update", as: :update_quantity

  get "/orders", to: "orders#index"
  post "/orders/:total_amount", to: "orders#create"
  put "/orders/:id", to: "orders#update"

  get "/order_items", to: "order_items#index"
  get "/create_order_item", to: "order_items#create", as: :create_order_item

  resources :users

  get "/signin", to: "sessions#new", as: :new_sessions
  post "/signin", to: "sessions#create", as: :sessions
  get "/signout", to: "sessions#destroy", as: :destroy_session

  get "/reports", to: "reports#index", as: :reports
end
