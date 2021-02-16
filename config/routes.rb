Rails.application.routes.draw do
  resources :users
  root 'pages#home'
  get 'about', to: 'pages#about'
  #exclude all other routes and only show the "show" action
  resources :articles
end