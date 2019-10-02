Rails.application.routes.draw do

    resources :users, only: [:create, :show]
    resources :mixtapes, only: [:create]
    resources :tracks, only: [:create, :shows]
    get '/playlists', to: 'spotify#playlists'
    get '/playlist/:id', to: 'spotify#playlist'
    get '/profile/', to: 'spotify#profile_pic'
    get '/mixtapes', to: 'mixtapes#mixtapes'
    get '/mixtapes/:id', to: 'mixtapes#mixtape'
    # get '/playlists', to: 'users#playlists'
    post '/login', to: 'auth#create'
    get '/validate', to: 'auth#validate_token'
end
 