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

  get "/sign_in", to: "sessions#new"
  post "/sessions", to: "sessions#create"
  delete "/sessions/:id", to: "sessions#destroy", as: "logout"

  resources :users do
    resources :restaurants do
      resources :dishes
    end
  end

end

#                      root GET    /                                                                    welcome#index
#    user_restaurant_dishes GET    /users/:user_id/restaurants/:restaurant_id/dishes(.:format)          dishes#index
#                           POST   /users/:user_id/restaurants/:restaurant_id/dishes(.:format)          dishes#create
#  new_user_restaurant_dish GET    /users/:user_id/restaurants/:restaurant_id/dishes/new(.:format)      dishes#new
# edit_user_restaurant_dish GET    /users/:user_id/restaurants/:restaurant_id/dishes/:id/edit(.:format) dishes#edit
#      user_restaurant_dish GET    /users/:user_id/restaurants/:restaurant_id/dishes/:id(.:format)      dishes#show
#                           PATCH  /users/:user_id/restaurants/:restaurant_id/dishes/:id(.:format)      dishes#update
#                           PUT    /users/:user_id/restaurants/:restaurant_id/dishes/:id(.:format)      dishes#update
#                           DELETE /users/:user_id/restaurants/:restaurant_id/dishes/:id(.:format)      dishes#destroy
#          user_restaurants GET    /users/:user_id/restaurants(.:format)                                restaurants#index
#                           POST   /users/:user_id/restaurants(.:format)                                restaurants#create
#       new_user_restaurant GET    /users/:user_id/restaurants/new(.:format)                            restaurants#new
#      edit_user_restaurant GET    /users/:user_id/restaurants/:id/edit(.:format)                       restaurants#edit
#           user_restaurant GET    /users/:user_id/restaurants/:id(.:format)                            restaurants#show
#                           PATCH  /users/:user_id/restaurants/:id(.:format)                            restaurants#update
#                           PUT    /users/:user_id/restaurants/:id(.:format)                            restaurants#update
#                           DELETE /users/:user_id/restaurants/:id(.:format)                            restaurants#destroy
#                     users GET    /users(.:format)                                                     users#index
#                           POST   /users(.:format)                                                     users#create
#                  new_user GET    /users/new(.:format)                                                 users#new
#                 edit_user GET    /users/:id/edit(.:format)                                            users#edit
#                      user GET    /users/:id(.:format)                                                 users#show
#                           PATCH  /users/:id(.:format)                                                 users#update
#                           PUT    /users/:id(.:format)                                                 users#update
#                           DELETE /users/:id(.:format)                                                 users#destroy