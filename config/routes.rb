Rails.application.routes.draw do
  root "home#index", as: "home"
  resources :jokes

  get "/rate", to: "jokes#show"

  post "/up", to: "jokes#up"
end
