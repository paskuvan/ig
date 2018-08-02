Rails.application.routes.draw do
  root 'pages#home'
  devise_for :users,
    path: '',
    path_names: {sign_in: 'login', sign_out: 'logout', edit: 'profile', sign_up: 'registrations'},
    controllers: {omniauth_callbacks: 'omniauth_callbacks', registrations: 'registrations'}

  #   get '/users/:id', to: 'users#show'
 	# /users/1 -> Users controller, show action, params {id: '1'}
 	resources :users, only: [:show]
end
