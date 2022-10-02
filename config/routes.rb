Rails.application.routes.draw do
  resources :monsters, only: [:index, :show]
  resources :tweets

  root "tweets#index"
end
