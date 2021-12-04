Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get '/my_events/new', to: 'my_events#new', as: 'events'
  post '/my_events/new', to: 'my_events#create'

  resources :events, only: [:show]

  resources :my_events, except: [:show, :destroy] do
    member do
      patch :cancel
    end
  end

  namespace :agent do
    # events#index pour afficher la liste des events planifiés auxquels on peut vouloir participer
    # en tant qu'élu
    resources :events, only: [:index] do
      resources :event_participations, only: [:create]
    end
    resources :event_participations, only: [:destroy]

    namespace :admin do
      # events#index pour afficher la liste des events à valider ou refuser pour un admin
      resources :events, only: [:index] do
        member do
          patch :decline
          patch :accept
        end
      end
    end
  end
end
