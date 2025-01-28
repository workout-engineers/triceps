Rails.application.routes.draw do
  root "tweets#index"
  devise_for :users
  resources :tweets
  resources :users, only: [:show]
  resources :users do
    member do
      get :followings, :followers
    end
  end
  resources :relationships, only: [:create, :destroy]
end
