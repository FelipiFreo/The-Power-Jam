let selectedPlayers = [];

function addPlayer(playerName) {

  // Adiciona jogadora selecionada na lista de jogadoras das Pills
  selectedPlayers.push(playerName);

  // Atualiza a exibição da lista das jogadoras nas Pills
  updatePillDisplay();

  // Resetar a select box
  document.getElementById('playerSelect').value = '';
}
