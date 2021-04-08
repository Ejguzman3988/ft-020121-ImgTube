Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/images', to: 'images#index'
  get '/images/:id', to: 'images#show', as: 'image' 
  get '/most_recent', to: 'images#most_recent', as: 'recent'
  

end
