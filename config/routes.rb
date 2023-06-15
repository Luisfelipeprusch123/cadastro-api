Rails.application.routes.draw do
  resources :articles
  resources :login_users
  resources :logins
  get 'tdlists/index'
  get 'tdlists/create'
  get 'tdlists/update'
  get 'tdlists/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
