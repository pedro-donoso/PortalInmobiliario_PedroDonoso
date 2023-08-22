Rails.application.routes.draw do
  resources :products
  root 'pages#home'

  #Datos de la gema Devise
  devise_for :users,  controllers: { registrations: 'registrations' },
                      path: '',
                      path_names: { sign_in: 'login',
                                    sign_out: 'logout',
                                    sign_up: 'registrate' }

  #Vistas estaticas
  get '/home',    to: 'pages#home'
  get '/privacy', to: 'pages#privacy'
  get '/terms',   to: 'pages#terms'
  resources :contacts, only: %i[new create]
end
