Rails.application.routes.draw do
  devise_for :users

  resources :posts do
    collection do
      get :timeline
    end
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy]
  end
  

  resources :users, :only => [:index, :show]
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/ing.html
  root 'hello#index'

  resources :players do
    resources :reviews, only: [:index, :create, :destroy]
  end

  resources :relationships do
    member do
      get "followings_show"
      get "followers_show"
    end
  end

end
