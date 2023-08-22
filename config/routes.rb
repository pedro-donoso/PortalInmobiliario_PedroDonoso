Rails.application.routes.draw do
  devise_for :users
  get '/home',    to: 'pages#home'
  get '/terms',   to: 'pages#terms'
  get '/privacy', to: 'pages#privacy'
  root "pages#home"
end
