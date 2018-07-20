Rails.application.routes.draw do
  root "tweets#index"
  devise_for :users
  post "/follow", to: "follows#follow"
  resources :tweets
  resources :users, only: [:show]
end
