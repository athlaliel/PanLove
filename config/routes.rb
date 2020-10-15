Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show, :index]
  

  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
    
  end

  root to: 'tweets#index'
  resources :tweets do
    resources :comments, only: :create
    resources :likes, only: [:create, :destroy]
    collection do
      get 'search'
    end
    # member do
    #   post 'users_guest_sign_in', to: '/users/guest_sign_in'
    # end
    
  end
  
  # get 'maps/index'
  # resources :maps, only: [:index]

end
