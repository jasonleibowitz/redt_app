RedtApp::Application.routes.draw do

  resources :users
  resources :links
  resources :votes
  get '/login' => 'sessions#new'
  get '/logout' => 'sessions#destroy'
  post '/sessions' => 'sessions#create'
  get '/change_vote/:id' => 'votes#change_vote'

  root to: 'links#index'

end
