Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/users" => "users#index"
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
  patch "/users/:id" => "users#update"
  get "/vaccines" => "vaccines#index"
  post "/vaccines" => "vaccines#create"
  get "/vaccines/:id" => "vaccines#show"









end
