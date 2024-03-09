# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

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
    # Players int he rooster
    # Line Up
    # Jam
    # Penalty Tracking



##### Fim dos seeds revisados












puts "Destruindo todos os registros de Ligas"

# Limpa os registros existentes
League.destroy_all

# Arrays com nomes, números e ligas fictícias

league = [
  { league_name: "Primal Stone Skaters", foundation: Date.new(2010, 5, 15), country: "Australia", city: "Sydney", instagram: "@PrimalStoneSkaters" },
  { league_name: "Pirate's Havoc Derby Crew", foundation: Date.new(2008, 11, 3), country: "Jamaica", city: "Port Royal", instagram: "@PiratesHavocDerbyCrew" },
  { league_name: "Stealth Shadows Ninja Derby Collective", foundation: Date.new(2012, 7, 22), country: "Japan", city: "Tokyo", instagram: "@StealthShadowsNinjaDerbyCollective" },
  { league_name: "Futuristic Flux Skating Syndicate", foundation: Date.new(2015, 4, 9), country: "United States", city: "San Francisco", instagram: "@FuturisticFluxSkatingSyndicate" },
  { league_name: "Nebula Valkyries", foundation: Date.new(2009, 8, 17), country: "Norway", city: "Oslo", instagram: "@NebulaValkyries" },
  { league_name: "Steampunk Thunder", foundation: Date.new(2011, 6, 5), country: "United Kingdom", city: "Manchester", instagram: "@SteampunkThunder" },
  { league_name: "Mystic Mermaids", foundation: Date.new(2013, 9, 28), country: "Denmark", city: "Copenhagen", instagram: "@MysticMermaids" },
  { league_name: "Cyber Samurai", foundation: Date.new(2016, 2, 14), country: "South Korea", city: "Seoul", instagram: "@CyberSamurai" },
  { league_name: "Galactic Gorgons", foundation: Date.new(2014, 10, 31), country: "Canada", city: "Vancouver", instagram: "@GalacticGorgons" },
  { league_name: "Time Warp", foundation: Date.new(2007, 12, 20), country: "New Zealand", city: "Wellington", instagram: "@TimeWarp" },
  { league_name: "Elemental Phoenix", foundation: Date.new(2018, 3, 11), country: "Spain", city: "Barcelona", instagram: "@ElementalPhoenix" },
  { league_name: "Moonlit Witches", foundation: Date.new(2019, 7, 7), country: "Germany", city: "Berlin", instagram: "@MoonlitWitches" },
  { league_name: "Jungle Serpent", foundation: Date.new(2010, 1, 1), country: "Brazil", city: "Rio de Janeiro", instagram: "@JungleSerpent" },
  { league_name: "Quantum Quasar", foundation: Date.new(2012, 4, 25), country: "Sweden", city: "Stockholm", instagram: "@QuantumQuasar" },
  { league_name: "Cosmic Centaur", foundation: Date.new(2013, 11, 12), country: "Greece", city: "Athens", instagram: "@CosmicCentaur" },
  { league_name: "Sorcerer's Spellbound", foundation: Date.new(2009, 9, 9), country: "Ireland", city: "Dublin", instagram: "@SorcerersSpellbound" },
  { league_name: "Dystopian Rebellion", foundation: Date.new(2015, 6, 30), country: "France", city: "Paris", instagram: "@DystopianRebellion" },
  { league_name: "Enchanted Elven", foundation: Date.new(2017, 8, 8), country: "Netherlands", city: "Amsterdam", instagram: "@EnchantedElven" },
  { league_name: "Space Odyssey", foundation: Date.new(2011, 3, 1), country: "Russia", city: "Moscow", instagram: "@SpaceOdyssey" }
]

league.length.times do |i|
  League.create!(
    league_name: league[i][:league_name],
    foundation: league[i][:foundation],
    country: league[i][:country],
    city: league[i][:city],
    instagram: league[i][:instagram]
  )
end

# Criação de 8 jogadoras de roller derby com Derby Names prontos

puts "Criando #{league.length} novas ligas"



# Sessão Game

puts "Criando 25 jogos"

random_locations = [
  { game_location_nickname: 'Ibira', game_map_address: 'Parque do Ibirapuera, São Paulo, SP, Brasil' },
  { game_location_nickname: 'Allianz', game_map_address: 'Allianz Parque, São Paulo, SP, Brasil' },
  { game_location_nickname: 'Morumbi', game_map_address: 'Estádio do Morumbi, São Paulo, SP, Brasil' },
  { game_location_nickname: 'Pacaembu', game_map_address: 'Estádio do Pacaembu, São Paulo, SP, Brasil' },
  { game_location_nickname: 'Arena Corinthians', game_map_address: 'Arena Corinthians, São Paulo, SP, Brasil' },
  { game_location_nickname: 'Estádio Nacional', game_map_address: 'Estádio Nacional Mané Garrincha, São Paulo, SP, Brasil' },
  { game_location_nickname: 'Parque Villa-Lobos', game_map_address: 'Parque Villa-Lobos, São Paulo, SP, Brasil' },
  { game_location_nickname: 'Clube Paineiras', game_map_address: 'Clube Paineiras do Morumby, São Paulo, SP, Brasil' },
  { game_location_nickname: 'Estádio do Canindé', game_map_address: 'Estádio do Canindé, São Paulo, SP, Brasil' },
  { game_location_nickname: 'Club Athletico Paulistano', game_map_address: 'Club Athletico Paulistano, São Paulo, SP, Brasil' },
  { game_location_nickname: 'Arena Anhembi', game_map_address: 'Arena Anhembi, São Paulo, SP, Brasil' },
  { game_location_nickname: 'Ginásio Municipal de Esportes', game_map_address: 'Ginásio Municipal de Esportes, São Paulo, SP, Brasil' },
  { game_location_nickname: 'Parque do Carmo', game_map_address: 'Parque do Carmo, São Paulo, SP, Brasil' },
  { game_location_nickname: 'Parque da Juventude', game_map_address: 'Parque da Juventude, São Paulo, SP, Brasil' },
  { game_location_nickname: 'Estádio Bruno José Daniel', game_map_address: 'Estádio Bruno José Daniel, São Paulo, SP, Brasil' },
  { game_location_nickname: 'Parque Ecológico do Tietê', game_map_address: 'Parque Ecológico do Tietê, São Paulo, SP, Brasil' },
  { game_location_nickname: 'Parque Cândido Portinari', game_map_address: 'Parque Cândido Portinari, São Paulo, SP, Brasil' },
  { game_location_nickname: 'Estádio Ícaro de Castro Melo', game_map_address: 'Estádio Ícaro de Castro Melo, São Paulo, SP, Brasil' },
  { game_location_nickname: 'Arena de Beach Tennis', game_map_address: 'Arena de Beach Tennis, São Paulo, SP, Brasil' },
  { game_location_nickname: 'Arena São Paulo', game_map_address: 'Arena São Paulo, São Paulo, SP, Brasil' },
  { game_location_nickname: 'Ginásio Ibirapuera', game_map_address: 'Ginásio Ibirapuera, São Paulo, SP, Brasil' },
  { game_location_nickname: 'Parque do Ipiranga', game_map_address: 'Parque do Ipiranga, São Paulo, SP, Brasil' }
  ]


# Gera 25 datas aleatórias futuras em 2024 com horários entre 10h e 22h
25.times do
  game_location = random_locations.sample,

  puts "game_location: #{game_location.inspect}"  # Adicione esta linha

  Game.create(

    game_name: "Team A x Team B at #{game_location[:game_location_nickname]}",
    game_date: rand(Date.today..Date.new(2024,12,31)),
    game_time: rand(10..22).to_s + ":00:00",
    game_location_nickname: game_location[:game_location_nickname],
    game_map_address: game_location[:game_map_address]
  )

end




puts "25 jogos criados"

# fim da sessão Game




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
    penalty_name: names[i],
    penalty_code: penalty_codes[i],
    description: descriptions[i]
  )
end

  puts "Penalties criados com sucesso"
