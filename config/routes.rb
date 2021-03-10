Rails.application.routes.draw do
  namespace :api do
    post "/users" => "users#create"

    post "/sessions" => "sessions#create"

    get "/dogs/:id" => "dogs#show"
    post "/dogs" => "dogs#create"
  end
end
