Rails.application.routes.draw do
  devise_for :teachers, controllers: {
    sessions:  "teachers/sessions",
    passwords: "teachers/passwords",
    sessions:  "teachers/registrations"
  }
  devise_for :users, controllers: {
    sessions:  "users/sessions",
    passwords: "users/passwords",
    sessions:  "users/registrations"
  }
  root "users#index"
  resources :users,     only: [:index, :show, :edit, :update]
  resources :teachers,  only: [:index, :show, :edit, :update]
  resources :messages,  only: [:index]
  resources :posts,     only: [:new, :create] do
    collection do
      get "search"
    end
  end

end
