Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/lists" => "lists#index"
  get "/lists/:id" => "lists#show"
  post "/lists" => "lists#create"
  patch "/lists/:id" => "lists#update"
  delete "/lists/:id" => "lists#destroy"
end
