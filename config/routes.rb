Rails.application.routes.draw do
  get 'sessions/new'

  root  'pages#index'
  get    'signup'  => 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

  resources :posts do
    resources :comments
  end

  resources :users
end
