Rails.application.routes.draw do
  get "sessions/new"
  root "posts#index"
  resources :comments
  resources :posts
  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:new, :create, :destroy]
  resources :posts do
    collection do
      post :confirm
    end
  end
end
