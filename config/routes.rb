Rails.application.routes.draw do
  get 'current/create'
  get 'users/show'
  get 'home/index'
  get 'users/sessions'
  get 'users/passwords'
  get 'users/registrations'
  get 'user/id'
  get 'mypage', to: 'homes#mypage'
  get   'users/:id'   =>  'users#show'
  get  'current/user'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"


  resources :users, only: :show
  
  resources :users, only: [:show]
  resources :posts, only: [:create]
  resources :users, only: [:new, :new]
  root to: 'home#index'
  
end

