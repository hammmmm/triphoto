Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  resources :posts, except: :show
  resources :users, only: :show
  resources :categories, only: :show
end
