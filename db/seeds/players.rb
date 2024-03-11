def seed_players

# Nome do Modelo
puts "  Jogadoras".colorize(:light_yellow)



# Destroying
puts "  - Destruindo registros existentes (!)".colorize(:light_red)
Player.destroy_all



# Dados
puts "  - Preparando dados para criação de novos registros".colorize(:green)

  players = [
  {calling_name: "Aria", family_name: "Almeida", derby_name: "Ariarunner", derby_number: "101"},
  {calling_name: "Bella", family_name: "Amarante", derby_name: "Belamazing", derby_number: "202"},
  {calling_name: "Clara", family_name: "Andrade", derby_name: "Clanova", derby_number: "303"},
  {calling_name: "Dani", family_name: "Alves", derby_name: "Danifire", derby_number: "404"},
  {calling_name: "Elisa", family_name: "Araújo", derby_name: "Eliwind", derby_number: "505"},
  {calling_name: "Fernanda", family_name: "Azevedo", derby_name: "Ferfury", derby_number: "606"},
  {calling_name: "Gabi", family_name: "Amorim", derby_name: "Gabstorm", derby_number: "707"},
  {calling_name: "Helo", family_name: "Alcântara", derby_name: "Helohawk", derby_number: "808"},
  {calling_name: "Isabela", family_name: "Albuquerque", derby_name: "Isarocket", derby_number: "909"},
  {calling_name: "Júlia", family_name: "Abreu", derby_name: "Jularrow", derby_number: "1010"},
  {calling_name: "Karina", family_name: "Aguiar", derby_name: "Karinaflash", derby_number: "1111"},
  {calling_name: "Laura", family_name: "Almada", derby_name: "Lautornado", derby_number: "1212"},
  {calling_name: "Mariana", family_name: "Amaral", derby_name: "Marisurge", derby_number: "1313"},
  {calling_name: "Natália", family_name: "Alípio", derby_name: "Natarazor", derby_number: "1414"},
  {calling_name: "Olivia", family_name: "Abade", derby_name: "Olivquake", derby_number: "1515"},
  {calling_name: "Paula", family_name: "Alencar", derby_name: "Paulthunder", derby_number: "1616"},
  {calling_name: "Quel", family_name: "Andrade", derby_name: "Quelblitz", derby_number: "1717"},
  {calling_name: "Renata", family_name: "Alves", derby_name: "Renarift", derby_number: "1818"},
  {calling_name: "Sofia", family_name: "Aguiar", derby_name: "Sofiasurge", derby_number: "1919"},
  {calling_name: "Tati", family_name: "Azevedo", derby_name: "Tatithunder", derby_number: "2020"},
  {calling_name: "Úrsula", family_name: "Almeida", derby_name: "Urfury", derby_number: "2121"},
  {calling_name: "Vanessa", family_name: "Amarante", derby_name: "Vanavenger", derby_number: "2222"},
  {calling_name: "Ximena", family_name: "Araújo", derby_name: "Ximenarage", derby_number: "2323"},
  {calling_name: "Ava", family_name: "Brasil", derby_name: "Avablast", derby_number: "101"},
  {calling_name: "Bianca", family_name: "Borges", derby_name: "Biancavortex", derby_number: "202"},
  {calling_name: "Clara", family_name: "Barbosa", derby_name: "Claracrusher", derby_number: "303"},
  {calling_name: "Diana", family_name: "Batista", derby_name: "Diadash", derby_number: "404"},
  {calling_name: "Eva", family_name: "Bento", derby_name: "Evaspark", derby_number: "505"},
  {calling_name: "Fernanda", family_name: "Branco", derby_name: "Ferblitz", derby_number: "606"},
  {calling_name: "Gabriela", family_name: "Bessa", derby_name: "Gabburst", derby_number: "707"},
  {calling_name: "Helena", family_name: "Braga", derby_name: "Helhurricane", derby_number: "808"},
  {calling_name: "Isabela", family_name: "Barros", derby_name: "Isablast", derby_number: "909"},
  {calling_name: "Juliana", family_name: "Bandeira", derby_name: "Jubolt", derby_number: "1010"},
  {calling_name: "Karina", family_name: "Bragança", derby_name: "Kariboom", derby_number: "1111"},
  {calling_name: "Laura", family_name: "Bastos", derby_name: "Lauralightning", derby_number: "1212"},
  {calling_name: "Mariana", family_name: "Bertolucci", derby_name: "Marithunder", derby_number: "1313"},
  {calling_name: "Natália", family_name: "Barcelos", derby_name: "Natabolt", derby_number: "1414"},
  {calling_name: "Olivia", family_name: "Bernardo", derby_name: "Olioverdrive", derby_number: "1515"},
  {calling_name: "Paula", family_name: "Brito", derby_name: "Paulapower", derby_number: "1616"},
  {calling_name: "Quel", family_name: "Bastos", derby_name: "Quelquake", derby_number: "1717"},
  {calling_name: "Renata", family_name: "Bandeira", derby_name: "Renarumble", derby_number: "1818"},
  {calling_name: "Sofia", family_name: "Barbosa", derby_name: "Sofiastorm", derby_number: "1919"},
  {calling_name: "Tati", family_name: "Bernardes", derby_name: "Tatithunder", derby_number: "2020"},
  {calling_name: "Úrsula", family_name: "Borges", derby_name: "Urfury", derby_number: "2121"},
  {calling_name: "Vanessa", family_name: "Braga", derby_name: "Vanavortex", derby_number: "2222"},
  {calling_name: "Wanda", family_name: "Batista", derby_name: "Wandawind", derby_number: "2323"},
  {calling_name: "Ana", family_name: "Cosme", derby_name: "Anacosmic", derby_number: "101"},
  {calling_name: "Bianca", family_name: "Carvalho", derby_name: "Biablitz", derby_number: "202"},
  {calling_name: "Clara", family_name: "Cunha", derby_name: "Clacrusader", derby_number: "303"},
  {calling_name: "Daniela", family_name: "Câmara", derby_name: "Danicentaur", derby_number: "404"},
  {calling_name: "Elena", family_name: "Cruz", derby_name: "Eleenchant", derby_number: "505"},
  {calling_name: "Fátima", family_name: "Correia", derby_name: "Faticentaur", derby_number: "606"},
  {calling_name: "Gabriela", family_name: "Cavalcante", derby_name: "Gabcyclone", derby_number: "707"},
  {calling_name: "Helena", family_name: "Coutinho", derby_name: "Helhurricane", derby_number: "808"},
  {calling_name: "Isabela", family_name: "Cardoso", derby_name: "Isaecho", derby_number: "909"},
  {calling_name: "Júlia", family_name: "Coelho", derby_name: "Jularrow", derby_number: "1010"},
  {calling_name: "Karina", family_name: "Cunha", derby_name: "Karcosmic", derby_number: "1111"},
  {calling_name: "Lara", family_name: "Campos", derby_name: "Laralight", derby_number: "1212"},
  {calling_name: "Mariana", family_name: "Carneiro", derby_name: "Marencounter", derby_number: "1313"},
  {calling_name: "Natália", family_name: "Chaves", derby_name: "Natcharm", derby_number: "1414"},
  {calling_name: "Olivia", family_name: "Castro", derby_name: "Olicyclone", derby_number: "1515"},
  {calling_name: "Paula", family_name: "Correia", derby_name: "Paulapower", derby_number: "1616"},
  {calling_name: "Quel", family_name: "Cavalcante", derby_name: "Quelquake", derby_number: "1717"},
  {calling_name: "Renata", family_name: "Camargo", derby_name: "Renaroller", derby_number: "1818"},
  {calling_name: "Sofia", family_name: "Cardoso", derby_name: "Sofistrike", derby_number: "1919"},
  {calling_name: "Tati", family_name: "Carvalho", derby_name: "Tatitornado", derby_number: "2020"},
  {calling_name: "Úrsula", family_name: "Coelho", derby_name: "Urfury", derby_number: "2121"},
  {calling_name: "Vivian", family_name: "Cruz", derby_name: "Vivivortex", derby_number: "2222"},
  {calling_name: "Wanda", family_name: "Correia", derby_name: "Wandawind", derby_number: "2323"},
  {calling_name: "Alice", family_name: "Dias", derby_name: "Alicedragon", derby_number: "101"},
  {calling_name: "Bárbara", family_name: "Duarte", derby_name: "Barbblaze", derby_number: "202"},
  {calling_name: "Carolina", family_name: "Dantas", derby_name: "Caroblitz", derby_number: "303"},
  {calling_name: "Danielle", family_name: "Domingos", derby_name: "Danidraco", derby_number: "404"},
  {calling_name: "Eva", family_name: "Dias", derby_name: "Evadragonfly", derby_number: "505"},
  {calling_name: "Fernanda", family_name: "Duarte", derby_name: "Ferfury", derby_number: "606"},
  {calling_name: "Gabriela", family_name: "Dias", derby_name: "Gabglide", derby_number: "707"},
  {calling_name: "Helena", family_name: "Dantas", derby_name: "Helhurricane", derby_number: "808"},
  {calling_name: "Isabella", family_name: "Duarte", derby_name: "Isablast", derby_number: "909"},
  {calling_name: "Juliana", family_name: "Dias", derby_name: "Jujaguar", derby_number: "1010"},
  {calling_name: "Karina", family_name: "Domingos", derby_name: "Kardraco", derby_number: "1111"},
  {calling_name: "Larissa", family_name: "Duarte", derby_name: "Laralightning", derby_number: "1212"},
  {calling_name: "Mariana", family_name: "Dias", derby_name: "Marisurge", derby_number: "1313"},
  {calling_name: "Natália", family_name: "Dantas", derby_name: "Natabolt", derby_number: "1414"},
  {calling_name: "Olivia", family_name: "Domingos", derby_name: "Olivquake", derby_number: "1515"},
  {calling_name: "Paula", family_name: "Duarte", derby_name: "Paulapower", derby_number: "1616"},
  {calling_name: "Quel", family_name: "Dias", derby_name: "Quelblitz", derby_number: "1717"},
  {calling_name: "Renata", family_name: "Dantas", derby_name: "Renarumble", derby_number: "1818"},
  {calling_name: "Sofia", family_name: "Duarte", derby_name: "Sofistrike", derby_number: "1919"},
  {calling_name: "Tatiana", family_name: "Domingos", derby_name: "Tatithunder", derby_number: "2020"},
  {calling_name: "Úrsula", family_name: "Dias", derby_name: "Urfury", derby_number: "2121"},
  {calling_name: "Vivian", family_name: "Duarte", derby_name: "Vivivortex", derby_number: "2222"},
  {calling_name: "Wanda", family_name: "Dantas", derby_name: "Wandawind", derby_number: "2323"},
  {calling_name: "Amanda", family_name: "Esteves", derby_name: "Amaelectra", derby_number: "101"},
  {calling_name: "Bianca", family_name: "Estrada", derby_name: "Biancabeam", derby_number: "202"},
  {calling_name: "Carla", family_name: "Eduardo", derby_name: "Carlaclash", derby_number: "303"},
  {calling_name: "Daniela", family_name: "Evangelista", derby_name: "Danidynamo", derby_number: "404"},
  {calling_name: "Elena", family_name: "Esteves", derby_name: "Elenastorm", derby_number: "505"},
  {calling_name: "Fernanda", family_name: "Estrada", derby_name: "Ferflare", derby_number: "606"},
  {calling_name: "Gabriela", family_name: "Eduardo", derby_name: "Gabglint", derby_number: "707"},
  {calling_name: "Helena", family_name: "Esteves", derby_name: "Helhavoc", derby_number: "808"},
  {calling_name: "Isabella", family_name: "Evangelista", derby_name: "Isabolt", derby_number: "909"},
  {calling_name: "Juliana", family_name: "Esteves", derby_name: "Jujolt", derby_number: "1010"},
  {calling_name: "Karina", family_name: "Estrada", derby_name: "Karakaze", derby_number: "1111"},
  {calling_name: "Larissa", family_name: "Eduardo", derby_name: "Laraluna", derby_number: "1212"},
  {calling_name: "Mariana", family_name: "Esteves", derby_name: "Marimeteor", derby_number: "1313"},
  {calling_name: "Natália", family_name: "Estrada", derby_name: "Natanova", derby_number: "1414"},
  {calling_name: "Olivia", family_name: "Evangelista", derby_name: "Olioblivion", derby_number: "1515"},
  {calling_name: "Paula", family_name: "Esteves", derby_name: "Paulapulse", derby_number: "1616"},
  {calling_name: "Quel", family_name: "Estrada", derby_name: "Quelquasar", derby_number: "1717"},
  {calling_name: "Renata", family_name: "Eduardo", derby_name: "Renaripple", derby_number: "1818"},
  {calling_name: "Sofia", family_name: "Esteves", derby_name: "Sofisurge", derby_number: "1919"},
  {calling_name: "Tatiana", family_name: "Evangelista", derby_name: "Tatithunder", derby_number: "2020"},
  {calling_name: "Úrsula", family_name: "Estrada", derby_name: "Urfury", derby_number: "2121"},
  {calling_name: "Vivian", family_name: "Esteves", derby_name: "Vivivortex", derby_number: "2222"},
  {calling_name: "Wanda", family_name: "Evangelista", derby_name: "Wandawave", derby_number: "2323"},
  {calling_name: "Andréa", family_name: "Fernandes", derby_name: "Andrflare", derby_number: "101"},
  {calling_name: "Bianca", family_name: "Freitas", derby_name: "Biaflame", derby_number: "202"},
  {calling_name: "Carolina", family_name: "Faria", derby_name: "Caroblast", derby_number: "303"},
  {calling_name: "Daniela", family_name: "Figueiredo", derby_name: "Danidraco", derby_number: "404"},
  {calling_name: "Elena", family_name: "Fernandes", derby_name: "Elenafury", derby_number: "505"},
  {calling_name: "Fernanda", family_name: "Farias", derby_name: "Ferfury", derby_number: "606"},
  {calling_name: "Gabriela", family_name: "Ferreira", derby_name: "Gabglide", derby_number: "707"},
  {calling_name: "Helena", family_name: "Fernandes", derby_name: "Helhurricane", derby_number: "808"},
  {calling_name: "Isabella", family_name: "Fonseca", derby_name: "Isabolt", derby_number: "909"},
  {calling_name: "Juliana", family_name: "Fernandes", derby_name: "Jujaguar", derby_number: "1010"},
  {calling_name: "Karina", family_name: "Figueira", derby_name: "Kariclash", derby_number: "1111"},
  {calling_name: "Larissa", family_name: "Fernandes", derby_name: "Laralightning", derby_number: "1212"},
  {calling_name: "Mariana", family_name: "Fonseca", derby_name: "Marisurge", derby_number: "1313"},
  {calling_name: "Natália", family_name: "Fernandes", derby_name: "Natafire", derby_number: "1414"},
  {calling_name: "Olivia", family_name: "Ferreira", derby_name: "Olivquake", derby_number: "1515"},
  {calling_name: "Paula", family_name: "Fernandes", derby_name: "Paulapower", derby_number: "1616"},
  {calling_name: "Quel", family_name: "Fonseca", derby_name: "Quelblitz", derby_number: "1717"},
  {calling_name: "Renata", family_name: "Farias", derby_name: "Renarumble", derby_number: "1818"},
  {calling_name: "Sofia", family_name: "Fernandes", derby_name: "Sofistrike", derby_number: "1919"},
  {calling_name: "Tatiana", family_name: "Figueiredo", derby_name: "Tatithunder", derby_number: "2020"},
  {calling_name: "Úrsula", family_name: "Fernandes", derby_name: "Urfury", derby_number: "2121"},
  {calling_name: "Vivian", family_name: "Fonseca", derby_name: "Vivivortex", derby_number: "2222"},
  {calling_name: "Wanda", family_name: "Ferreira", derby_name: "Wandawind", derby_number: "2323"}
]



# Criação
puts "  - Criando #{players.size} novas jogadoras".colorize(:green)

  players.size.times do |i|
    Player.create!(
      calling_name: players[i][:calling_name],
      family_name: players[i][:family_name],
      derby_name: players[i][:derby_name],
      derby_number: players[i][:derby_number],
      email: "#{players[i][:calling_name].downcase}#{players[i][:family_name][0]}@spacejammer.com",
      password: "Space123", # Use password ao invés de encrypted_password
      password_confirmation: "Space123" # Adicione isso para confirmar a senha
    )
  end



  # Finalização do bloco
  puts "  - Seeds de jogadoras criados com sucesso!".colorize(:yellow)
  puts "\n"

end
