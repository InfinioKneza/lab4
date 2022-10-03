Rails.application.routes.draw do
  resources :monsters, only: [:index, :show]
  resources :tweets
  post '/tweets/new', to: 'tweets#create'

  root "tweets#index"
end
