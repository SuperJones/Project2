Rails.application.routes.draw do
  devise_for :users
  root to: 'users#index'

  resources :users
  resources :users do
    resources :weapons
  end

  resources :users do
      member do
          get "add_weapon"
      end
  end

  put "/users/:id/add_weapon", to: "users#add_weapon"

  # resources :weapons
  # resource :session
end

# Prefix Verb   URI Pattern                                Controller#Action
#        new_user_session GET    /users/sign_in(.:format)                   devise/sessions#new
#            user_session POST   /users/sign_in(.:format)                   devise/sessions#create
#    destroy_user_session DELETE /users/sign_out(.:format)                  devise/sessions#destroy
#           user_password POST   /users/password(.:format)                  devise/passwords#create
#       new_user_password GET    /users/password/new(.:format)              devise/passwords#new
#      edit_user_password GET    /users/password/edit(.:format)             devise/passwords#edit
#                         PATCH  /users/password(.:format)                  devise/passwords#update
#                         PUT    /users/password(.:format)                  devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)                    devise/registrations#cancel
#       user_registration POST   /users(.:format)                           devise/registrations#create
#   new_user_registration GET    /users/sign_up(.:format)                   devise/registrations#new
#  edit_user_registration GET    /users/edit(.:format)                      devise/registrations#edit
#                         PATCH  /users(.:format)                           devise/registrations#update
#                         PUT    /users(.:format)                           devise/registrations#update
#                         DELETE /users(.:format)                           devise/registrations#destroy
#                    root GET    /                                          users#index
#                   users GET    /users(.:format)                           users#index
#                         POST   /users(.:format)                           users#create
#                new_user GET    /users/new(.:format)                       users#new
#               edit_user GET    /users/:id/edit(.:format)                  users#edit
#                    user GET    /users/:id(.:format)                       users#show
#                         PATCH  /users/:id(.:format)                       users#update
#                         PUT    /users/:id(.:format)                       users#update
#                         DELETE /users/:id(.:format)                       users#destroy
#            user_weapons GET    /users/:user_id/weapons(.:format)          weapons#index
#                         POST   /users/:user_id/weapons(.:format)          weapons#create
#         new_user_weapon GET    /users/:user_id/weapons/new(.:format)      weapons#new
#        edit_user_weapon GET    /users/:user_id/weapons/:id/edit(.:format) weapons#edit
#             user_weapon GET    /users/:user_id/weapons/:id(.:format)      weapons#show
#                         PATCH  /users/:user_id/weapons/:id(.:format)      weapons#update
#                         PUT    /users/:user_id/weapons/:id(.:format)      weapons#update
#                         DELETE /users/:user_id/weapons/:id(.:format)      weapons#destroy
#                         GET    /users(.:format)                           users#index
#                         POST   /users(.:format)                           users#create
#                         GET    /users/new(.:format)                       users#new
#                         GET    /users/:id/edit(.:format)                  users#edit
#                         GET    /users/:id(.:format)                       users#show
#                         PATCH  /users/:id(.:format)                       users#update
#                         PUT    /users/:id(.:format)                       users#update
#                         DELETE /users/:id(.:format)                       users#destroy
#         add_weapon_user GET    /users/:id/add_weapon(.:format)            users#add_weapon
#                         GET    /users(.:format)                           users#index
#                         POST   /users(.:format)                           users#create
#                         GET    /users/new(.:format)                       users#new
#                         GET    /users/:id/edit(.:format)                  users#edit
#                         GET    /users/:id(.:format)                       users#show
#                         PATCH  /users/:id(.:format)                       users#update
#                         PUT    /users/:id(.:format)                       users#update
#                         DELETE /users/:id(.:format)                       users#destroy
#                         PUT    /users/:id/add_weapon(.:format)            users#add_weapon
