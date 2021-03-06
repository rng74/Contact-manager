Rails.application.routes.draw do

  resources :contacts
  resources :users, except: :edit

  root 'pages#index'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get "/signup", to: "users#new"
  post "/signup", to: "users#create"

  get "/profile", to: "pages#profile"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
