Rails.application.routes.draw do
  resources :posts
  get "blog/index"
  get "user/index"
  get "adm/admin_page"
  resources :conversa_passadas
  resources :na_imprensas
  resources :link_externos
  resources :colega_tradutors
  resources :parceiros
  resources :books
  devise_for :user
  resources :user

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root to: "home#index"
end
