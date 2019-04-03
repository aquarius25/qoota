Rails.application.routes.draw do
  devise_for :users, controllers: {
        registrations: 'users/registrations'
  }
  root "groups#index"
  resources :users
  resources :articles
  resources :groups
end
