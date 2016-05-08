Rails.application.routes.draw do
  root  'pages#index'
  get   'users/new'

  resources :posts do
    resources :comments
  end

  resources :users
end
