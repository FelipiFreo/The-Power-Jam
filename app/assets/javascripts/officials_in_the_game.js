let temporaryChosenPlayersArray = [];

console.log("Testando o arquivo JavaScript.");


function addPlayer(chosenPlayer) {

  // Adiciona jogadora selecionada na lista de jogadoras das Pills
  temporaryChosenPlayersArray.push(chosenPlayer);

  // Atualiza a exibição da lista das jogadoras nas Pills
  // updatePillDisplay();

  console.log(temporaryChosenPlayersArray);

  // exibe a lista de jogadoras selecionadas
  document.getElementById('array-display').textContent = temporaryChosenPlayersArray.map(player => player.calling_name).join(', ');

  // envia lista atualizada para a variável Ruby @temporary_chosen_players_array
   // Envia a lista atualizada para o servidor
   fetch('/update_chosen_players', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
      'X-CSRF-Token': document.querySelector('meta[name="csrf-token"]').content
    },
    body: JSON.stringify({ chosen_players: temporaryChosenPlayersArray })
  })
  .then(response => {
    console.log(response); // Adicione esta linha
    return response.json();
  })
  .then(response => {
    // Se a resposta não for 2xx, irá resultar em um erro
    if (!response.ok) throw new Error('Network response was not ok');
    return response.json();
  })
  .catch(error => console.error('Erro ao atualizar jogadores:', error));


  // Resetar a select box
  document.getElementById('playerSelectBox').value = '';
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
