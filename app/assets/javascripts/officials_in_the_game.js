//officials_in_the_game.js

console.log("Testando o arquivo officials_in_the_game.js");

// Ouça o evento 'turbolinks:load' para garantir que o DOM esteja pronto
document.addEventListener('turbolinks:load', function() {

  console.log('Evento turbolinks:load acionado');

  // Verifica se o selectBox está no DOM
  const selectBox = document.getElementById('playerSelectBox');

  if (selectBox) {
    console.log('O selectBox foi encontrado no DOM:', selectBox);
  } else {
    console.error('O selectBox não foi encontrado no DOM.');
  }
});


function addPlayer(chosenPlayer) {

  console.log("Função addPlayer - ID da jogadora selecionada:", chosenPlayer); // Adicione esta linha

  const selectBox = document.getElementById('playerSelectBox');

  if (selectBox) {
    selectBox.value = chosenPlayer;
  } else {
    console.error('Elemento selectBox não encontrado');
  }

  console.log("Função addPlayer - Chamou o fetch /update_chosen_players");
  // Envia o ID da jogadora selecionada para o Ruby
  fetch('/update_chosen_players', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
      'X-CSRF-Token': document.querySelector('meta[name="csrf-token"]').content
    },


    // Enviando apenas o ID da jogadora selecionada
    body: JSON.stringify({ chosen_player_id: chosenPlayer })

  })
  .then(response => response.json())
  .then(response => {
    if (response.success) {

      console.log("Função addPlayer - Resposta com sucesso:");

      updateTemporaryChosenPlayersDisplay();
      refreshSelectbox();

      console.log("Função addPlayer - chamou update e refresh");

      } else {
      console.error('Falha ao adicionar jogadora:', response.message);
    }
  })
  .catch(error => console.error('Erro ao adicionar jogadora:', error));
}

function updateTemporaryChosenPlayersDisplay() {

  console.log('Função chamada - updateTemporaryChosenPlayersDisplay');

  fetch('/current_chosen_players')
    .then(response => response.json())
    .then(data => {

      console.log('Dados recebidos: chosen_players = @temporary_chosen_players_array', data.chosen_players);

      const displayElement = document.getElementById('array-display');
      if (displayElement) {
        // Acessar apenas os IDs e atualizá-los no array-display
        // const playerIds = data.chosen_players.map(player => player.id).join(', ');
        const playerDetails = data.chosen_players.map(player => `${player.calling_name} #${player.derby_number}`).join(', ');


        //const playerIds = data.chosen_players.join(', ');

        displayElement.textContent = playerIds;

        console.log('Atualizando array-display com:', playerIds);
      } else {
        console.error('Elemento #array-display não encontrado no DOM');
      }
    })
    .catch(error => console.error('Erro ao buscar jogadoras escolhidas:', error));
}

function refreshSelectbox() {

  console.log('Função chamada - refreshSelectbox');


  // Faz uma requisição AJAX para o controlador que renderiza a select box
  fetch('/refresh_selectbox')
    .then(response => response.text())
    .then(html => {

      console.log("Função refresh_selectbox - Resposta com sucesso:", html);

      const playerSelectBox = document.getElementById('playerSelectBox');

      if (playerSelectBox) {
        playerSelectBox.innerHTML = html;
        console.log('Função refresh_selectbox - Select box atualizado');
      } else {
        console.error('Elemento com ID "playerSelectBox" não encontrado.');
      }
  })
  .catch(error => console.error('Erro ao atualizar selectbox:', error));
}

// function updatePillDisplay () {
//   let pillContainer = document.getElementById('pill-container');
//   pillContainer.innerHTML = '';

//   selectedPlayers.forEach(playerName => {
//     let pill = document.createElement('span');
//     pill.className = 'pill';
//     pill.textContent = playerName;

//     pillContainer.appendChild(pill);
//   });
