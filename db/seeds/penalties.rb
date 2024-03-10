def seed_penalties

  # pseduocodigo
  # fazer umas variáveis


  # Nome do Modelo
  puts "  Penalties".colorize(:light_yellow)

  # Destroying
  puts "  - Destruindo registros existentes (!)".colorize(:light_red)
  Penalty.destroy_all

  # Dados
  puts "  - Preparando dados para criação de novos registros".colorize(:green)

    # Arrays com nomes, números e ligas fictícias
    names          = ["Back Block", "High Block", "Low Block", "Head Block", "Forearm", "Leg Block", "Illegal Contact", "Direction", "Multiplayer", "Illegal Position", "Cut", "Interference", "Illegal Procedure", "Misconduct"]
    penalty_codes  = ["B", "A", "L", "H", "F", "E", "C", "D", "M", "P", "X", "N", "I", "G"]
    descriptions   = ["Impact to an illegal target zone", "Impact to an illegal target zone", "Impact to an illegal target zone", "Impact with an illegal blocking zone", "Impact with an illegal blocking zone", "Impact with an illegal blocking zone", "Other illegal contact", "Other illegal contact", "Multiplayer blocks", "Illegal positioning", "Gaining position", "Interfering ith the flow of the game", "Other illegal procedures, including Star Pass violation and Star Pass interference", "Penalties for unsporting conduct, including Insubordination"]
    hand_signals   = []

  # Criação
  puts "  - Criando #{names.size} novos penalties".colorize(:green)

  names.size.times do |i|
    Penalty.create!(
      penalty_name: names[i],
      penalty_code: penalty_codes[i],
      description: descriptions[i]
      )
    end

  # Finalização do bloco
  puts "  - Seeds de penalties criados com sucesso!".colorize(:yellow)
  puts "\n"

end
