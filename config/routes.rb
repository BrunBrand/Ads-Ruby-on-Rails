Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#show"

  #cadastrar
  get "/users/new", to: "users#new"
  post "/users", to: "users#create"

  #login
  get "/sessions/new", to: "sessions#new"

end