Rails.application.routes.draw do
  devise_for :teachers, controllers: {
    sessions:        "teachers/sessions",
    passwords:       "teachers/passwords",
    registratrions:  "teachers/registrations"
  }
  devise_for :users, controllers: {
    sessions:        "users/sessions",
    passwords:       "users/passwords",
    registrations:   "users/registrations"
  }
  root "users#index"
  post "teachers/pay" => "payment#pay"
  resources   :users,      only: [:index, :show, :edit, :update]
  resources   :messages,   only: [:index]
  resources   :teachers,   only: [:index, :show, :edit, :update] do
    resources :messages,   only: [:new, :create]

    member do
      get "pay"
    end
  end
  resources   :posts,      only: [:new, :create] do
    collection do
      get "search"
    end
  end

end
