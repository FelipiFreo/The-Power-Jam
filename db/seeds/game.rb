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

   Game.create(

     # game_name: "Team A x Team B at #{game_location[:game_location_nickname]}",
     # game_date: rand(Date.today..Date.new(2024,12,31)),
     # game_time: rand(10..22).to_s + ":00:00",
     # game_location_nickname: game_location[:game_location_nickname],
     # game_map_address: game_location[:game_map_address]
   )

 end




 puts "25 jogos criados"

 # fim da sessão Game
