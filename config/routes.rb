Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#show"

  #cadastrar
  #get "/users/new", to: "users#new"
  #post "/users", to: "users#create"
  #rails way to make a crud of users:
  resources :users, only: [:new, :create]

  resources :ads, only: [:new, :create, :edit, :update]

  #login
  #get "/sessions/new", to: "sessions#new"
  resources :sessions, only: [:new, :create] do
    collection do
      delete "sign_out", to: "sessions#destroy", as: "sign_out"
    end
  end 

end
