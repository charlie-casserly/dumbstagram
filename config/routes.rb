Rails.application.routes.draw do
  root 'posts#index'

  resources :users, only: [:new, :create] 

  get 'login', to: 'sessions#new'

  post 'login', to: 'sessions#create'

  delete 'logout', to: 'sessions#destroy'

  get 'authorized', to: 'sessions#page_requires_login'
  
  resources :posts do
    get '/like' , on: :member, to: 'posts#like'
  end
  
end
