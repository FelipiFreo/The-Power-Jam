require 'colorize'

require_relative "seeds/officials_positions"
require_relative "seeds/penalties"
require_relative "seeds/jam_finished_by"
require_relative "seeds/players"
require_relative "seeds/leagues"
require_relative "seeds/players_in_the_leagues"
# require_relative "seeds/game"
require_relative "seeds/leagues_in_the_game"
require_relative "seeds/officials_in_the_game"
require_relative "seeds/rooster"
require_relative "seeds/players_in_the_rooster"
require_relative "seeds/line_up"
require_relative "seeds/jam"
require_relative "seeds/penalty_tracking"

##### Seeds bem feitos estão aqui

  #### Game admin (Pétreos)
    # Officials Positions
    # Penalties
    # Jam Finished By


  #### Player Profile (Fixos)
    # Players
    # Leagues
    # Players in the Leagues


  #### Game (aleatórios)
    # Game
    # Leagues in the Game
    # Officials in the Game
    # Rooster
    # Players in the rooster
    # Line Up
    # Jam
    # Penalty Tracking

##### Fim dos seeds revisados



# Apresentação do Seed

puts "\n\n"
puts "  SEEDS ABORDADOS".colorize(:light_yellow)
puts "  - Este seed criará registros fictícios de jogos, jogadoras e ligas e
  registros reais de Penalties, Oficial Positions e Jam Finished By\n\n\n".colorize(:light_cyan)


# Listagem dos seeds que serão criados


  puts "  Game admin (Pétreos)".colorize(:light_yellow)
    puts "    - Officials Positions".colorize(:light_cyan)
    puts "    - Penalties".colorize(:light_cyan)
    puts "    - Jam Finished By".colorize(:light_cyan)
    puts "\n"


    puts "  Player Profile (Fixos)".colorize(:light_yellow)
      puts "    - Players".colorize(:light_cyan)
      puts "    - Leagues".colorize(:light_cyan)
      puts "    - Players in the Leagues".colorize(:light_cyan)
      puts "\n"

  puts "  Game (aleatórios)".colorize(:light_yellow)
    puts "    - Game".colorize(:light_cyan)
    puts "    - Leagues in the Game".colorize(:light_cyan)
    puts "    - Officials in the Game".colorize(:light_cyan)
    puts "    - Rooster".colorize(:light_cyan)
    puts "    - Players int he rooster".colorize(:light_cyan)
    puts "    - Line Up".colorize(:light_cyan)
    puts "    - Jam".colorize(:light_cyan)
    puts "    - Penalty Tracking".colorize(:light_cyan)
    puts "\n\n\n"

#### Seção  Apresentação do Seed [ok]



# Cabeçalho de Craição de Seeds
puts "  CRIAÇÃO DE SEEDS".colorize(:light_yellow)
puts "\n\n"


seed_officials_positions
seed_penalties
seed_jam_finished_by
seed_players
seed_leagues
seed_players_in_the_leagues
# seed_game
# seed_leagues_in_the_game
# seed_officials_in_the_game
# seed_rooster
# seed_players_in_the_rooster
# seed_line_up
# seed_jam
# seed_penalty_tracking
