Rails.application.routes.draw do
  resources :qiita_items
  devise_for :users, controllers: {
        registrations: 'users/registrations'
  }
  root "articles#index"
  resources :users, only: [:show]
  resources :articles
  resources :qiita_items
end
