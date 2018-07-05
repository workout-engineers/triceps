Rails.application.routes.draw do
  root "tweets#new"
  devise_for :users
  resources :tweets
end
