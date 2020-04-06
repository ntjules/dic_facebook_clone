Rails.application.routes.draw do
  root "posts#index"
  resources :comments
  resources :posts
  resources :users, only: [:new, :create, :show]
end
