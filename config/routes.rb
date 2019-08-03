Rails.application.routes.draw do
  resources :simplified_charts
  resources :todos
  resources :qiita_items
  devise_for :users, controllers: {
        registrations: 'users/registrations'
  }
  root "articles#index"
  resources :users, only: [:show]
  resources :articles do
    member do
      get :my_article
    end
  end
  resources :qiita_items
  resources :simplified_charts
end
