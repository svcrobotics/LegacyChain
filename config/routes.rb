Rails.application.routes.draw do
  
  root "connection#index"

  get '/home', to: 'home#index'
  get '/dashboard', to: 'dashboard#index', as: :dashboard
  get '/testament', to: 'testament#index', as: :testament
  get '/heirs', to: 'heirs#index', as: :heirs
  get '/notaire', to: 'notaire#index', as: :notaire

  get '/eth_price', to: 'eth_price#show'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
  # Ignore les requêtes de Chrome DevTools
  match ".well-known/*path", to: proc { [204, {}, [""]] }, via: :all

end
