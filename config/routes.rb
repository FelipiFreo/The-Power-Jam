Rails.application.routes.draw do

  devise_for :players, controllers: { registrations: 'registrations' }

  patch "players", to: "registrations#update"

  devise_scope :player do
    delete "logout", to: "devise/sessions#destroy", as: :logout
    post "login", to: "devise/sessions#create", as: :login
    post "players/sign_up", to: "devise/sessions#new", as: :sign_up
  end

  get "players/:id", to: "players#show", as: :player
  get "player/index", to: "players#index"


  # get "games"
  root to: "players#home"
  # get "leagues", to: "leagues#index"
  get "games", to: "games#menu"
  get "games/new_game", to: "games#new_game"
  get "games/rooster", to: "games#rooster"
  get "games/ref_team", to: "games#ref_team"
  get "games/show", to: "games#show"

end



  # rota root
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root to: "pages#home"
