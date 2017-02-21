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

  get '/users/:id/cart', to: 'cart#index', as: 'cart'
  post '/users/:id/cart', to: 'cart#checkout', as: 'checkout'
  get '/users/:id/cart/edit', to: 'cart#edit', as: 'edit_cart'
  post '/users/:id/cart/edit', to: 'cart#remove_from_cart', as: 'remove_from_cart'

  get '/users/:id/orders', to: 'orders#index', as: 'orders'
  get '/users/:id/orders/new', to: 'orders#new', as: 'new_order'
  post '/users/:id/orders', to: 'orders#create'
  get '/users/:id/orders/:id', to: 'orders#show', as: 'order'
  get '/users/:id//orders/:id/edit', to: 'orders#edit', as: 'edit_order'
  patch '/users/:id/orders/:id', to: 'orders#update'
  delete '/users/:id/orders/:id', to: 'orders#destroy'

  get '/login', to: 'sessions#new', as: 'new_session'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/items', to: 'items#index'
  get '/items/new', to: 'items#new', as: 'new_item'
  post '/items', to: 'items#create'
  get '/items/:id', to: 'items#show', as: 'item'
  post '/items/:id', to: 'items#add_to_cart', as: 'add_to_cart'
  get '/items/:id/edit', to: 'items#edit', as: 'edit_item'
  patch '/items/:id', to: 'items#update'
  delete '/items/:id', to: 'items#destroy'

  get '/categories', to: 'categories#index'
  get '/categories/new', to: 'categories#new', as: 'new_category'
  post '/categories', to: 'categories#create'
  get '/categories/:id', to: 'categories#show', as: 'category'
  get '/categories/:id/edit', to: 'categories#edit', as: 'edit_category'
  patch '/categories/:id', to: 'categories#update'
  delete '/categories/:id', to: 'categories#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
