Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  # get '/images', to: 'images#index' # index
  # get '/images/new', to: 'images#new' # new
  # post '/images', to: 'images#create' # create
  
  # get '/images/:id/edit', to: 'images#edit' #edit
  # patch '/images/:id', to: 'images#update' #update
  # put '/images/:id', to: 'images#update' #update

  # delete '/images/:id', to: 'images#destroy' #destroy
 
  # get '/images/:id', to: 'images#show', as: 'image' # show

  resources :images

  #custom route
  get '/most_recent', to: 'images#most_recent', as: 'recent'


  
  
  

end
