Rails.application.routes.draw do
  root 'home#index'
  get 'home/index'
  devise_for :users
  resources :users, path: '/', param: :username, only: %i[show] do
  post :follow, to: 'users/follows#create', as: :follow
  delete :follow, to: 'users/follows#destroy', as: :unfollow
end
end
  