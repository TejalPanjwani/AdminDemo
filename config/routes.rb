Rails.application.routes.draw do


  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :admin do 
    resources :statuts 
      root to: "statuts#index"
      #get "acceptservice" => "statuts#acceptservice"
      #get "rejectservice" => "statuts#rejectservice"

      get "servicestatuts/:id", to: "statuts#servicestatuts"
      get "acceptservice/:id", to: "statuts#acceptservice", as: "acceptservice"
      get "rejectservice/:id", to: "statuts#rejectservice", as: "rejectservice"

      #get :acceptservice
      #get :rejectservice


  end


  resources :users do 
    collection do 
      get :register
      get :min
    end
  end

  resources :services do 
    collection do 
      get :new
    end
  end


end
