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
    league: ligas.sample, # Seleção randômica de uma liga
    email: "#{nomes[i].downcase}@spacejammer.com",
    password: "Space123", # Use password ao invés de encrypted_password
    password_confirmation: "Space123" # Adicione isso para confirmar a senha
  )
end

puts "Seed concluído com sucesso!"
