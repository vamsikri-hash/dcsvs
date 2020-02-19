Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "static#index"

  namespace :api do
    namespace :v1 do
      resources :articles
    end
  end
  get "auth", to: "authentication#current"
  post "auth/login", to: "authentication#authenticate"
  post "signup", to: "users#create"
end
