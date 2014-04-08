RedtApp::Application.routes.draw do

  resources :users
  resources :links
  get '/login' => 'sessions#new'
  get '/logout' => 'sessions#destroy'
  post '/sessions' => 'sessions#create'


end
