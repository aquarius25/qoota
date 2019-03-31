Rails.application.routes.draw do
  get 'users/show'
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }
  resources :users
end
