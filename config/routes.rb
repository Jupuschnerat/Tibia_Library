Rails.application.routes.draw do
  devise_for :users

  resources :bosses do
    resources :groups
    put 'check'
    put 'found'
    resources :users, only: [] do
      put 'check', to: 'bosses#check'
      put 'found', to: 'bosses#found'
    end
  end

  resources :raid_bosses do
    resources :groups
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

  resources :event_bosses, only: [:index] do
    resources :groups
    put 'check'
    put 'found'
    resources :users, only: [] do
      put 'check', to: 'event_bosses#check'
      put 'found', to: 'event_bosses#found'
    end
  end

  resources :quest_bosses, only: [:index] do
    resources :groups
    put 'check'
    put 'found'
    resources :users, only: [] do
      put 'check', to: 'quest_bosses#check'
      put 'found', to: 'quest_bosses#found'
    end
  end

end
