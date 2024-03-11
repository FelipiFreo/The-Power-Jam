puts "Destruindo todos os registros de Ligas"

# Limpa os registros existentes
League.destroy_all

# Arrays com nomes, números e ligas fictícias

league = [
  { league_name: "Primal Stone Skaters", foundation: Date.new(2010, 5, 15), country: "Australia", city: "Sydney", instagram: "@PrimalStoneSkaters" },
  { league_name: "Pirates Derby Crew", foundation: Date.new(2008, 11, 3), country: "Jamaica", city: "Port Royal", instagram: "@PiratesHavocDerbyCrew" },
  { league_name: "Stealth Shadows Ninja Derby Collective", foundation: Date.new(2012, 7, 22), country: "Japan", city: "Tokyo", instagram: "@StealthShadowsNinjaDerbyCollective" },
  { league_name: "Futuristic Flux Skating Syndicate", foundation: Date.new(2015, 4, 9), country: "United States", city: "San Francisco", instagram: "@FuturisticFluxSkatingSyndicate" },
  { league_name: "Nebula Valkyries", foundation: Date.new(2009, 8, 17), country: "Norway", city: "Oslo", instagram: "@NebulaValkyries" },
  { league_name: "Steampunk Thunders", foundation: Date.new(2011, 6, 5), country: "United Kingdom", city: "Manchester", instagram: "@SteampunkThunder" },
  { league_name: "Mystic Mermaids", foundation: Date.new(2013, 9, 28), country: "Denmark", city: "Copenhagen", instagram: "@MysticMermaids" },
  { league_name: "Cyber Samurais", foundation: Date.new(2016, 2, 14), country: "South Korea", city: "Seoul", instagram: "@CyberSamurai" },
  { league_name: "Galactic Gorgons", foundation: Date.new(2014, 10, 31), country: "Canada", city: "Vancouver", instagram: "@GalacticGorgons" },
  { league_name: "Time Warps", foundation: Date.new(2007, 12, 20), country: "New Zealand", city: "Wellington", instagram: "@TimeWarp" },
  { league_name: "Elemental Phoenix", foundation: Date.new(2018, 3, 11), country: "Spain", city: "Barcelona", instagram: "@ElementalPhoenix" },
  { league_name: "Moonlit Witches", foundation: Date.new(2019, 7, 7), country: "Germany", city: "Berlin", instagram: "@MoonlitWitches" },
  { league_name: "Jungle Serpents", foundation: Date.new(2010, 1, 1), country: "Brazil", city: "Rio de Janeiro", instagram: "@JungleSerpent" },
  { league_name: "Quantum Quasar", foundation: Date.new(2012, 4, 25), country: "Sweden", city: "Stockholm", instagram: "@QuantumQuasar" },
  { league_name: "Cosmic Centaur", foundation: Date.new(2013, 11, 12), country: "Greece", city: "Athens", instagram: "@CosmicCentaur" },
  { league_name: "Sorcerer's Spellbounds", foundation: Date.new(2009, 9, 9), country: "Ireland", city: "Dublin", instagram: "@SorcerersSpellbound" },
  { league_name: "Dystopian Rebellion", foundation: Date.new(2015, 6, 30), country: "France", city: "Paris", instagram: "@DystopianRebellion" },
  { league_name: "Enchanted Elvens", foundation: Date.new(2017, 8, 8), country: "Netherlands", city: "Amsterdam", instagram: "@EnchantedElven" },
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

puts "Criando #{league.length} novas ligas"
