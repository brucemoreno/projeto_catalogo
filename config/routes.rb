Rails.application.routes.draw do
  root 'filmes#index'
  resources :logs
  resources :filmes
  resources :ators
  resources :criticas
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
