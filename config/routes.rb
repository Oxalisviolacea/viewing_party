Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "welcome#index"

  post "/login", to: "sessions#create"

  get :register, to: 'users#new'

  resources :users, only: [:create, :edit, :update]

  get '/users/:id/edit_password', to: "users#edit_password"

  get :dashboard, to: 'dashboard#show'

  get '/discover', to: 'discover#index'

  get 'movies/top40', to: 'movies#top40'
  get 'movies/search', to: 'movies#search'
  resources :movies, only: %i[show], param: :movie_id

  post '/friendship/create', to: 'friendships#create'

  get '/viewing-party/new', to: 'parties#new'
end
