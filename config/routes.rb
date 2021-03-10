Rails.application.routes.draw do
  namespace :api do
    post "/users" => "users#create"

    post "/sessions" => "sessions#create"

    post "/dogs" => "dogs#create"
  end
end
