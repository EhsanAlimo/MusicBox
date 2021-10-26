Rails.application.routes.draw do

  root :to => 'pages#home'
  resources :users, :only => [:index, :new, :create]
  resources :songs
  get 'search', to: "songs#search"
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  get '/pages' => "pages#form"
  get '/pages/results' => "pages/results"

  resources :playlists

end
