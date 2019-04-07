Rails.application.routes.draw do
  devise_for :users, controllers: {
        registrations: 'users/registrations'
  }
  root "articles#index"
  resources :users, only: [:show]
  resources :articles
end
