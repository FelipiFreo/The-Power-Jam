Rails.application.routes.draw do


  # Devise routes

  devise_for :players, controllers: { registrations: 'registrations' }

  devise_scope :player do
    post "players/sign_up", to: "devise/sessions#new", as: :sign_up
    post "login", to: "devise/sessions#create", as: :login
    delete "logout", to: "devise/sessions#destroy", as: :logout
  end

  patch "players", to: "registrations#update"


  # Players routes

  root to: "players#home"
  get "players", to: "players#index"
  get "players/:id", to: "players#show", as: :player


  # Games routes

  get "games", to: "games#menu"

  get "games/new_game", to: "games#new_game"
  post "games/create_game", to: "games#create_game", as: "create_game"

  get "games/:id", to: "games#show", as: :game


  # Officials in the Games routes

  get "games/officials_in_the_game/:game_id", to: "officials_in_the_game#officials_in_the_game", as: :games_officials_in_the_game
  post "games/create_officials_in_the_game", to: "officials_in_the_game#create_officials_in_the_game", as: :create_officials_in_the_game

  post 'update_chosen_players', to: 'officials_in_the_game#update_chosen_players'
  get 'current_chosen_players', to: 'officials_in_the_game#current_chosen_players'
  get 'refresh_selectbox', to: 'officials_in_the_game#refresh_selectbox'
  post 'remove_chosen_player_from_temporary_array', to: 'officials_in_the_game#remove_chosen_player_from_temporary_array'



  # Rooster routes

  get "games/rooster", to: "games#rooster"


end



  # rota root
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root to: "pages#home"
