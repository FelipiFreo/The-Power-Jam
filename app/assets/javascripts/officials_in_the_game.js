//officials_in_the_game.js

console.log("Testando o arquivo officials_in_the_game.js");

function addPlayer(chosenPlayer) {

    // Envia o ID da jogadora selecionada para o Ruby
    fetch('/update_chosen_players', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
      'X-CSRF-Token': document.querySelector('meta[name="csrf-token"]').content
    },

     // Enviando apenas o ID da jogadora selecionada
    body: JSON.stringify({ chosen_player_id: chosenPlayer.id })
  })

  .then(response => response.json())
  .then(response => {
    if (response.success) {

      updatePlayerDisplay();
      refreshSelectbox();

      } else {
      console.error('Falha ao adicionar jogadora:', response.message);
    }
  })
  .catch(error => console.error('Erro ao adicionar jogadora:', error));
}

function updatePlayerDisplay() {

  fetch('/current_chosen_players')
    .then(response => response.json())
    .then(data => {

      console.log('Dados recebidos:', data.chosen_players);


      // Atualizando o conteúdo do elemento no DOM
      document.getElementById('array-display').textContent = data.chosen_players.map(player => player.calling_name).join(', ');
      });
}


function refreshSelectbox() {

  // Faz uma requisição AJAX para o controlador que renderiza a select box
  fetch('/refresh_selectbox')
    .then(response => response.text())
    .then(html => {

      // Substitui a select box existente pelo novo conteúdo
      document.getElementById('playerSelectBox').innerHTML = html;

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
