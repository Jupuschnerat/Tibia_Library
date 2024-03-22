Rails.application.routes.draw do
  devise_for :users

  resources :bosses do
    resources :groups
    put 'check', on: :member
    put 'found', on: :member
  end

  resources :guides

  resources :groups do
    resources :memberships, only: [:create, :update, :destroy]
    resources :users, only: [:index, :create, :destroy] # Assuming you want CRUD operations for users within groups
  end

  resources :users, only: [:show, :edit, :update, :destroy] # For individual user management

  root 'bosses#index' # Or whatever your root route should be

  resources :servers do
    resources :groups do
      resources :membership_requests, only: :create
    end
  end


end
