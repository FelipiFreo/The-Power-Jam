def seed_jogadora

# Nome do Modelo
puts "  Jogadoras".colorize(:light_yellow)



# Destroying
puts "  - Destruindo registros existentes (!)".colorize(:light_red)
Player.destroy_all



# Dados
puts "  - Preparando dados para criação de novos registros".colorize(:green)

  # Arrays com nomes, números e ligas fictícias
  nomes = ["Ana", "Beatriz", "Carla", "Daniela", "Eduarda", "Fernanda", "Gabriela", "Helena"]
  sobrenomes = ["Silva", "Oliveira", "Santos", "Pereira", "Almeida", "Lima", "Martins", "Costa"]
  derby_names_prontos = ["Blaze Thunderstrike", "Viper Venomous", "Rogue Havoc", "Stinger Frostbite", "Velocity Wildfire", "Thunder Phoenix", "Blaze Cyclone", "Rogue Quicksilver"]
  numeros_derby = ["101", "202", "303", "404", "505", "606", "707", "808"]



# Criação
puts "  - Criando #{nomes.size} novas jogadoras".colorize(:green)

  nomes.size.times do |i|
    Player.create!(
      calling_name: nomes[i],
      family_name: sobrenomes[i],
      derby_name: derby_names_prontos[i],
      derby_number: numeros_derby[i],
      email: "#{nomes[i].downcase}@spacejammer.com",
      password: "Space123", # Use password ao invés de encrypted_password
      password_confirmation: "Space123" # Adicione isso para confirmar a senha
    )
  end



  # Finalização do bloco
  puts "  - Seeds de jogadoras criados com sucesso!".colorize(:yellow)
  puts "\n"

end
