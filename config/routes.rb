Rails.application.routes.draw do
  root "home#index", as: "home"
  resources :jokes

  get "/rate", to: "jokes#show"

  post "/up", to: "jokes#up"

  namespace :api do
    namespace :v1 do
      resources :jokes
    end
  end
end
