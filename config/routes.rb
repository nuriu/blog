Rails.application.routes.draw do
  resources :posts do
    resources :comments
  end
  root 'pages#index'
end
