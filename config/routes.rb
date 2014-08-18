Rails.application.routes.draw do

  root 'products#index'

  get '/product/:id' => 'products#show'

end
