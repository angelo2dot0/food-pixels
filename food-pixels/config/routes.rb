Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  root to: "welcome#index"

  # get "/users", to: "users#index", as: "users"
  get "/users/new", to: "users#new", as: "new_user"
  post "users", to: "users#create"
  get "users/:id", to: "users#show"
  get "users/edit/:id", to: "users#edit", as: "edit_user"
  patch "users/edit/:id", to: "users#update"

  get "/sign_in", to: "sessions#new"
  post "/sessions", to: "sessions#create"

  get "/restaurants", to: "restaurants#index"
  get "/restaurants/new", to: "restaurants#new", as: "new_restaurant"
  post "/restaurants", to: "restaurants#create"
  get "restaurants/:id", to: "restaurants#show"
  get "restaurants/edit/:id", to: "restaurants#edit", as: "edit_restaurant"
  patch "restaurants/edit/:id", to: "restaurants#update"

  get "/dishes", to: "dishes#index"
  get "/dishes/new", to: "dishes#new", as: "new_dish"
  post "/dishes", to: "dishes#create"
  get "dishes/:id", to: "dishes#show"
  get "dishes/edit/:id", to: "dishes#edit", as: "edit_dish"
  patch "dishes/edit/:id", to: "dishes#update"
end