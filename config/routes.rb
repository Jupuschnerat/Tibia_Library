Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :servers do
    resources :groups do
      resources :bosses, except: [:index]
      member do
        put 'found', to: 'groups#found'
        put 'check', to: 'groups#check'
      end
    end
  end

  resources :bosses, only: [:index]

  resources :raid_bosses do
    resources :groups
  end

  resources :guides

  # Define a separate route for groups that don't belong to a server
  resources :groups do
    resources :memberships, only: [:index, :create, :update, :destroy]
    resources :users, only: [:index, :create, :destroy] # Assuming you want CRUD operations for users within groups
  end

  resources :users, only: [:show, :edit, :update, :destroy] # For individual user management

    # Define routes for groups nested under servers
  resources :servers do
    resources :groups do
      resources :membership_requests, only: [:index, :create, :update, :destroy]
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

  resources :profiles, only: [:show, :edit, :update]
  get 'bosstiary', to: 'bosstiary#index'
  # Define a separate route for creating a new group without specifying a server
  # get '/groups/new', to: 'groups#new', as: 'new_group'
end
