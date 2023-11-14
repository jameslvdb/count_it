Rails.application.routes.draw do
  # get 'password_resets/new'
  # get 'password_resets/create'
  # get "passwords/edit"
  # get "passwords/update"
  # get 'sessions/new'
  # get 'sessions/create'
  # get 'sessions/destroy'
  # get 'registrations/new'
  # get 'registrations/create'
  get "welcome/index"
  resources :meals
  resources :daily_logs
  resources :consumables

  resource :registration
  resource :session
  resource :password_reset
  resource :password

  get "daily_logs/today", to: "daily_logs#show", as: "today"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", :as => :rails_health_check

  # Defines the root path route ("/")
  root "welcome#index"
end
