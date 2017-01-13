Rails.application.routes.draw do
  get '/items', to: 'items#index'
  get '/items/new', to: 'items#new', as: 'new_item'
  post '/items', to: 'items#create'
  get '/items/:id', to: 'items#show', as: 'item'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
