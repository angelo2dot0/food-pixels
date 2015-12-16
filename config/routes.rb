Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  root to: "welcome#index"

  get "/sign_in", to: "sessions#new"
  post "/sessions", to: "sessions#create"
  delete "/sessions/:id", to: "sessions#destroy", as: "logout"

  resources :users
  resources :restaurants do
    resources :dishes
  end

end

#               Prefix Verb   URI Pattern                                           Controller#Action
#                 root GET    /                                                     welcome#index
#              sign_in GET    /sign_in(.:format)                                    sessions#new
#             sessions POST   /sessions(.:format)                                   sessions#create
#               logout DELETE /sessions/:id(.:format)                               sessions#destroy
#                users GET    /users(.:format)                                      users#index
#                      POST   /users(.:format)                                      users#create
#             new_user GET    /users/new(.:format)                                  users#new
#            edit_user GET    /users/:id/edit(.:format)                             users#edit
#                 user GET    /users/:id(.:format)                                  users#show
#                      PATCH  /users/:id(.:format)                                  users#update
#                      PUT    /users/:id(.:format)                                  users#update
#                      DELETE /users/:id(.:format)                                  users#destroy
#    restaurant_dishes GET    /restaurants/:restaurant_id/dishes(.:format)          dishes#index
#                      POST   /restaurants/:restaurant_id/dishes(.:format)          dishes#create
#  new_restaurant_dish GET    /restaurants/:restaurant_id/dishes/new(.:format)      dishes#new
# edit_restaurant_dish GET    /restaurants/:restaurant_id/dishes/:id/edit(.:format) dishes#edit
#      restaurant_dish GET    /restaurants/:restaurant_id/dishes/:id(.:format)      dishes#show
#                      PATCH  /restaurants/:restaurant_id/dishes/:id(.:format)      dishes#update
#                      PUT    /restaurants/:restaurant_id/dishes/:id(.:format)      dishes#update
#                      DELETE /restaurants/:restaurant_id/dishes/:id(.:format)      dishes#destroy
#          restaurants GET    /restaurants(.:format)                                restaurants#index
#                      POST   /restaurants(.:format)                                restaurants#create
#       new_restaurant GET    /restaurants/new(.:format)                            restaurants#new
#      edit_restaurant GET    /restaurants/:id/edit(.:format)                       restaurants#edit
#           restaurant GET    /restaurants/:id(.:format)                            restaurants#show
#                      PATCH  /restaurants/:id(.:format)                            restaurants#update
#                      PUT    /restaurants/:id(.:format)                            restaurants#update
#                      DELETE /restaurants/:id(.:format)                            restaurants#destroy
