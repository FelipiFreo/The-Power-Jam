# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Destruindo todos os registros de jogadoras"

# Limpa os registros existentes
Player.destroy_all

# Arrays com nomes, números e ligas fictícias
nomes = ["Ana", "Beatriz", "Carla", "Daniela", "Eduarda", "Fernanda", "Gabriela", "Helena"]
sobrenomes = ["Silva", "Oliveira", "Santos", "Pereira", "Almeida", "Lima", "Martins", "Costa"]
numeros_derby = ["101", "202", "303", "404", "505", "606", "707", "808"]
ligas = ["London Roller Derby", "Glasgow Roller Derby"]

# Array de Derby Names prontos
derby_names_prontos = [
  "Blaze Thunderstrike",
  "Viper Venomous",
  "Rogue Havoc",
  "Stinger Frostbite",
  "Velocity Wildfire",
  "Thunder Phoenix",
  "Blaze Cyclone",
  "Rogue Quicksilver"
]

# Criação de 8 jogadoras de roller derby com Derby Names prontos

puts "Criando 8 novas jogadoras"


8.times do |i|
  Player.create!(
    calling_name: nomes[i],
    family_name: sobrenomes[i],
    derby_name: derby_names_prontos[i],
    derby_number: numeros_derby[i],
    # league: ligas.sample, # Seleção randômica de uma liga
    email: "#{nomes[i].downcase}@spacejammer.com",
    password: "Space123", # Use password ao invés de encrypted_password
    password_confirmation: "Space123" # Adicione isso para confirmar a senha
  )
end

puts "Seed concluído com sucesso!"


# Criação e penalties

puts ""
puts ""
puts "Criando penalties"
puts ""

# Limpa os registros existentes
Penalty.destroy_all

# Arrays com dados dos penalties

  names          = ["Back Block", "High Block", "Low Block", "Head Block", "Forearm", "Leg Block", "Illegal Contact", "Direction", "Multiplayer", "Illegal Position", "Cut", "Interference", "Illegal Procedure", "Misconduct"]
  penalty_codes  = ["B", "A", "L", "H", "F", "E", "C", "D", "M", "P", "X", "N", "I", "G"]
  descriptions   = ["Impact to an illegal target zone", "Impact to an illegal target zone", "Impact to an illegal target zone", "Impact with an illegal blocking zone", "Impact with an illegal blocking zone", "Impact with an illegal blocking zone", "Other illegal contact", "Other illegal contact", "Multiplayer blocks", "Illegal positioning", "Gaining position", "Interfering ith the flow of the game", "Other illegal procedures, including Star Pass violation and Star Pass interference", "Penalties for unsporting conduct, including Insubordination"]
  hand_signals   = []

  # Criação de Penalties

  puts "Criando penalties"

names.size.times do |i|
  Penalty.create!(
    name: names[i],
    penalty_code: penalty_codes[i],
    description: descriptions[i]
  )
end

  puts "Penalties criados com sucesso"
