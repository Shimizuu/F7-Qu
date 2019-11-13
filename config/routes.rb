Rails.application.routes.draw do
  resources :tuiters
  devise_for :users
  root 'pages#index'
  resources :parties do
    collection do
        post :add_student
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  end