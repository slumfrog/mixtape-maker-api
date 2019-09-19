Rails.application.routes.draw do

    resources :users, only: [:create, :show]
    resources :mixtapes, only: [:create, :show, :index]
    post '/login', to: 'auth#create'

end
