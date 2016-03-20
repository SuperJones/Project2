Rails.application.routes.draw do
  root to: "users#index "

  resources :users do
      resources :items
  end
end
