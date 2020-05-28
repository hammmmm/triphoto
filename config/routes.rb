Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  resources :posts, except: :show do
    collection do
      get 'search'
    end
    resource :likes, only: [:create, :destroy]
  end
  resources :users, only: :show
  resources :categories, only: :show
end
