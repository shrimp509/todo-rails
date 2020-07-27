Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/signin' => 'signin#index'


  get '/signup' => 'signup#index'
  post '/signup' => 'signup#create'

  root 'homepage#index'
end
