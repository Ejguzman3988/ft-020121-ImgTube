Rails.application.routes.draw do

  
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  delete '/logout', to: "sessions#logout"

  get '/auth/google_oauth2/callback', to: 'sessions#omniauth'
  get '/most_recent', to: 'images#most_recent', as: 'recent'
  get '/search', to: 'images#search', as: 'search'
  
  root('static#home')
  # /collages/:collage_id/images/new
  # /collages/:collage_id/images

  resources :collages do
    resources :images, only: [:index, :new, :create]
  end
  
  # NESTED route
  # post '/images/:image_id/comments', to: 'comments#create'
  resources :images do
    resources :comments, only: [:create]
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  # get '/images', to: 'images#index' # index - list all images
  # get '/images/new', to: 'images#new' # new - new form
  # post '/images', to: 'images#create' # create - post from the new form
  
  # get '/images/:id/edit', to: 'images#edit' #edit - 
  # patch '/images/:id', to: 'images#update' #update
  # put '/images/:id', to: 'images#update' #update

  # delete '/images/:id', to: 'images#destroy' #destroy
 
  # get '/images/:id', to: 'images#show', as: 'image' # show
  #custom route                     
  # as: 'recent' => recent_path
  # recent_path = '/most_recent'



end
