Rails.application.routes.draw do
  root to: 'users#index'

  resources :users do
      member do
          get "add_weapon"
      end
  end

  # put "/users/:id/add_weapon", to: "users#add_weapon"

  resources :weapons
  resource :session
end

# Prefix Verb   URI Pattern                     Controller#Action
#            root GET    /                               users#index
# add_weapon_user POST   /users/:id/add_weapon(.:format) users#add_weapon
#           users GET    /users(.:format)                users#index
#                 POST   /users(.:format)                users#create
#        new_user GET    /users/new(.:format)            users#new
#       edit_user GET    /users/:id/edit(.:format)       users#edit
#            user GET    /users/:id(.:format)            users#show
#                 PATCH  /users/:id(.:format)            users#update
#                 PUT    /users/:id(.:format)            users#update
#                 DELETE /users/:id(.:format)            users#destroy
#         weapons GET    /weapons(.:format)              weapons#index
#                 POST   /weapons(.:format)              weapons#create
#      new_weapon GET    /weapons/new(.:format)          weapons#new
#     edit_weapon GET    /weapons/:id/edit(.:format)     weapons#edit
#          weapon GET    /weapons/:id(.:format)          weapons#show
#                 PATCH  /weapons/:id(.:format)          weapons#update
#                 PUT    /weapons/:id(.:format)          weapons#update
#                 DELETE /weapons/:id(.:format)          weapons#destroy
#         session POST   /session(.:format)              sessions#create
#     new_session GET    /session/new(.:format)          sessions#new
#    edit_session GET    /session/edit(.:format)         sessions#edit
#                 GET    /session(.:format)              sessions#show
#                 PATCH  /session(.:format)              sessions#update
#                 PUT    /session(.:format)              sessions#update
#                 DELETE /session(.:format)              sessions#destroy
