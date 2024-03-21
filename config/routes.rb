Rails.application.routes.draw do
  devise_for :users

  resources :bosses_nemises do
    resources :groups
  end

  resources :guides

  resources :groups do
    resources :users, only: [:index, :create, :destroy] # Assuming you want CRUD operations for users within groups
  end

  resources :users, only: [:show, :edit, :update, :destroy] # For individual user management

  root 'bosses_nemesis#index' # Or whatever your root route should be
end
