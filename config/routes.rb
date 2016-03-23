Rails.application.routes.draw do
  root to: 'users#index'

  resources :users do
      resources :weapons
  end
  resource :session
end

# Prefix Verb   URI Pattern                                Controller#Action
#             root GET    /                                          users#index
#     user_weapons GET    /users/:user_id/weapons(.:format)          weapons#index
#                  POST   /users/:user_id/weapons(.:format)          weapons#create
#  new_user_weapon GET    /users/:user_id/weapons/new(.:format)      weapons#new
# edit_user_weapon GET    /users/:user_id/weapons/:id/edit(.:format) weapons#edit
#      user_weapon GET    /users/:user_id/weapons/:id(.:format)      weapons#show
#                  PATCH  /users/:user_id/weapons/:id(.:format)      weapons#update
#                  PUT    /users/:user_id/weapons/:id(.:format)      weapons#update
#                  DELETE /users/:user_id/weapons/:id(.:format)      weapons#destroy
#            users GET    /users(.:format)                           users#index
#                  POST   /users(.:format)                           users#create
#         new_user GET    /users/new(.:format)                       users#new
#        edit_user GET    /users/:id/edit(.:format)                  users#edit
#             user GET    /users/:id(.:format)                       users#show
#                  PATCH  /users/:id(.:format)                       users#update
#                  PUT    /users/:id(.:format)                       users#update
#                  DELETE /users/:id(.:format)                       users#destroy
#          session POST   /session(.:format)                         sessions#create
#      new_session GET    /session/new(.:format)                     sessions#new
#     edit_session GET    /session/edit(.:format)                    sessions#edit
#                  GET    /session(.:format)                         sessions#show
#                  PATCH  /session(.:format)                         sessions#update
#                  PUT    /session(.:format)                         sessions#update
#                  DELETE /session(.:format)                         sessions#destroy
