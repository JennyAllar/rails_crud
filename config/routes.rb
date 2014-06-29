Rails.application.routes.draw do
  
  get '/', to: 'welcome#index'

  devise_for :users
  root 'welcome#index'
  
  get '/cats', to: 'cats#index'
  
  get '/dogs', to: 'dogs#index'

  get '/cats/new', to: 'cats#new', as: 'new_cat'

  post '/cats', to: 'cats#create'

  get '/cats/:id', to: 'cats#show', as: 'cat'

  get '/cats/:id/edit', to: 'cats#edit', as: 'edit_cat'

  patch '/cats/:id', to: 'cats#update'

  put '/cats/:id', to: 'cats#update'
  
  delete '/cats/:id', to: 'cats#destroy'
  
  resources :dogs
  
  resources :cities
  
  resources :bikes
  
  resources :messages
end
