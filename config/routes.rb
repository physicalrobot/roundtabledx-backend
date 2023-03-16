Rails.application.routes.draw do
  get 'sessions/create'
  get 'sessions/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :users, only: [:index, :show, :create, :update, :destroy]
  resources :sessions, only: [:index, :show, :create, :update, :destroy]

  # Defines the root path route ("/")
  # root "articles#index"

  get '/me', to: "users#show"
  post '/signup', to: "users#create"

  post '/login', to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

end
