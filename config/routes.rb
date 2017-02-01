Rails.application.routes.draw do

  root 'items#index'

  get '/admin', to: 'admin#index'

  get '/users', to: 'users#index'
  get '/users/new', to: 'users#new', as: 'new_user'
  post '/users', to: 'users#create'
  get '/users/:id', to: 'users#show', as: 'user'
  get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  patch '/users/:id', to: 'users#update'
  delete '/users/:id', to: 'users#destroy'

  get '/login', to: 'sessions#new', as: 'new_session'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/items', to: 'items#index'
  get '/items/new', to: 'items#new', as: 'new_item'
  post '/items', to: 'items#create'
  get '/items/:id', to: 'items#show', as: 'item'
  get '/items/:id/edit', to: 'items#edit', as: 'edit_item'
  patch '/items/:id', to: 'items#update'
  delete '/items/:id', to: 'items#destroy'

  get '/categories', to: 'categories#index'
  get '/categories/new', to: 'categories#new', as: 'new_category'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
