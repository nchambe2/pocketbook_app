Rails.application.routes.draw do

  get '/' => 'users#new'
  resources :users

  get '/about' =>  'pages#about'
  get '/contact' => 'pages#contact'
  get '/help' => 'pages#help'

  get '/login' => 'sessions#new'
  get '/logout' => 'sessions#destroy'
  post '/login' => 'sessions#create'

end
