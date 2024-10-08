console.log("Testando o arquivo JavaScript.");


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
    if (response.sucess) {

      updatePlayerDisplay();


    }
  })
  .catch(error => console.error('Erro ao atualizar jogadores:', error));
}

function updatePlayerDisplay() {

  fetch('/current_chosen_players')
    .then(response => response.json())
    .then(data => {
      document.getElementById('array-display').textContent = data.players.map(player = player.calling_name).join(', ');
    });

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
// }
