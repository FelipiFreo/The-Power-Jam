def seed_players_in_the_leagues

  # Nome do Modelo
  puts "  Jogadora na Liga".colorize(:light_yellow)



  # Destroying
  puts "  - Destruindo registros existentes (!)".colorize(:light_red)
  PlayersInTheLeague.destroy_all



  # Dados
  puts "  - Preparando dados para criação de novos registros".colorize(:green)

    # Arrays de Hashes de opções de Players in the League
    players = Player.all
    leagues = League.all


  # Criação
  puts "  - Alocando #{players.size} jogadoras em suas respectivas Ligas".colorize(:green)

  players.each do |player|

    PlayersInTheLeague.create!(
      player_id: player.id,
      league_id: leagues.sample.id,
      derby_name: player[:derby_name],
      derby_number: player[:derby_number]
    )
  end



    # Finalização do bloco
  puts "  - Seeds de opções de Fim de Jam criados com sucesso!".colorize(:yellow)
  puts "\n"

  end
