Rails.application.routes.draw do

  resources :products

  root 'products#index'

  get '/search' => 'products#search'

  get '/results' => 'products#results'

  post '/results' => 'products#results'

end
