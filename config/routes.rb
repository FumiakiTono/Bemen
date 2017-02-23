Rails.application.routes.draw do
  devise_for :users
  root "users#index"
  resources :users,     only: [:index, :show, :edit, :update]
  resources :teachers,  only: [:index, :show, :edit, :update]
  resources :messages,  only: [:index]
  resources :posts,     only: [:new, :create]
end
