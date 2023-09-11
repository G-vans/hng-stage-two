Rails.application.routes.draw do
 
  
  get '/api', to: 'people#index'
  get '/api/:id', to: 'people#show'
  post '/api', to: 'people#create'
  put '/api/:id', to: 'people#update'
  delete '/api/:id', to: 'people#destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
