Rails.application.routes.draw do
  root "users#index"
  resources :users, only: [:show, :edit, :update, :index, :new, :create]
  resources :teachers, only: [:index, :show, :edit, :update, :new, :create]
  resources :messages, only: [:index]
  resources :posts, only: [:new, :create]
end
