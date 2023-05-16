Rails.application.routes.draw do
  root to: redirect('/events')
  resources :events
  #get 'events/index'
  get '/pages', to: 'pages#index'
  #root 'pages#home'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
