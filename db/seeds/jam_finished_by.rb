def seed_jam_finished_by

  # Nome do Modelo
  puts "  Jam Finished By".colorize(:light_yellow)



  # Destroying
  puts "  - Destruindo registros existentes (!)".colorize(:light_red)
  JamFinishedBy.destroy_all



  # Dados
  puts "  - Preparando dados para criação de novos registros".colorize(:green)

    # Arrays de Hashes de opções de Fim de Jam
    finishing_options = [
      { finished_by: "Jammer Call"
      },

      { finished_by: "Time is Up"
      },

      { finished_by: "Official Call"
      }
    ]

    # Criação
    puts "  - Criando #{finishing_options.size} novas opções de Fim de Jam".colorize(:green)

    finishing_options.size.times do |i|

      JamFinishedBy.create!(
        finished_by: finishing_options[i][:finished_by]
      )
    end

    # Finalização do bloco
    puts "  - Seeds de opções de Fim de Jam criados com sucesso!".colorize(:yellow)
    puts "\n"

  end
