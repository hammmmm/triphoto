Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  resources :posts, except: :show do
    collection do
      get 'search'
    end
    resource :likes, only: [:create, :destroy]
  end
  resources :users, only: [:index, :show]
  resources :categories, only: :show
  resources :countries, only: :show
end
