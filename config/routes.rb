Rails.application.routes.draw do
  resources :simplified_charts
  resources :todos
  get "qiita_apis/index", to: "qiita_apis#index"
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
end
