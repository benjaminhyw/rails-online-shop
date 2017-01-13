Rails.application.routes.draw do
  get '/items', to: 'items#index'
  get '/items/:id', to: 'items#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
