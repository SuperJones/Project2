Rails.application.routes.draw do
  root to: 'users#index'

  resources :users do
      resources :items
  end
  resource :session
end


# Prefix Verb   URI Pattern                              Controller#Action
#           root GET    /                                        users#index
#     user_items GET    /users/:user_id/items(.:format)          items#index
#                POST   /users/:user_id/items(.:format)          items#create
#  new_user_item GET    /users/:user_id/items/new(.:format)      items#new
# edit_user_item GET    /users/:user_id/items/:id/edit(.:format) items#edit
#      user_item GET    /users/:user_id/items/:id(.:format)      items#show
#                PATCH  /users/:user_id/items/:id(.:format)      items#update
#                PUT    /users/:user_id/items/:id(.:format)      items#update
#                DELETE /users/:user_id/items/:id(.:format)      items#destroy
#          users GET    /users(.:format)                         users#index
#                POST   /users(.:format)                         users#create
#       new_user GET    /users/new(.:format)                     users#new
#      edit_user GET    /users/:id/edit(.:format)                users#edit
#           user GET    /users/:id(.:format)                     users#show
#                PATCH  /users/:id(.:format)                     users#update
#                PUT    /users/:id(.:format)                     users#update
#                DELETE /users/:id(.:format)                     users#destroy
#        session POST   /session(.:format)                       sessions#create
#    new_session GET    /session/new(.:format)                   sessions#new
#   edit_session GET    /session/edit(.:format)                  sessions#edit
#                GET    /session(.:format)                       sessions#show
#                PATCH  /session(.:format)                       sessions#update
#                PUT    /session(.:format)                       sessions#update
#                DELETE /session(.:format)                       sessions#destroy
