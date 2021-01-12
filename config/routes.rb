Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'
  #exclude all other routes and only show the "show" action
  resources :articles, only: [:show]
end
