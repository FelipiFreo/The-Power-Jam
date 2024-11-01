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

      console.log("Função addPlayer - Respondeu com sucesso");
      console.log("Função addPlayer - chamará update e refresh");

      refreshSelectbox();
      updatePillDisplay();


      } else {
      console.error('Falha ao adicionar jogadora:', response.message);
    }
  })
  .catch(error => console.error('Erro ao adicionar jogadora:', error));
}


function refreshSelectbox() {

  console.log('Função chamada - refreshSelectbox');


  // Faz uma requisição AJAX para o controlador que renderiza a select box
  fetch('/refresh_selectbox')
  .then(response => response.text())
  .then(html => {

    console.log("Função refresh_selectbox - Respondeu com sucesso");

    const playerSelectBox = document.getElementById('playerSelectBox');

    if (playerSelectBox) {
        playerSelectBox.innerHTML = html;
        console.log('Função refreshSelectbox() - Select box refreshado');
      } else {
        console.error('Elemento com ID "playerSelectBox" não encontrado.');
      }
  })
  .catch(error => console.error('Erro ao atualizar selectbox:', error));
}


function updatePillDisplay() {

  console.log('Função chamada - updatePillDisplay');

  fetch('/current_chosen_players')
    .then(response => response.text())
    .then(html => {

      console.log('Dados recebidos: chosen_players = Player.where(id: @temporary_chosen_players_array).select(:id, :calling_name, :derby_number)', html.chosen_players);


      const pillDisplay = document.getElementById('pill-container-display');

      if (pillDisplay) {
        pillDisplay.innerHTML = html;
        console.log('Função updatePillDisplay() - Select box atualizado');
      } else {
        console.error('Elemento com ID "pillDisplay" não encontrado.');
      }



    })
    .catch(error => console.error('Erro ao buscar jogadoras escolhidas:', error));
}


document.querySelectorAll(".pill").forEach( pill => {
  pill.addEventListener("click", () => pill.classList.toggle("pill--selected"));
});






























// function updatePillDisplay () {
//   let pillContainer = document.getElementById('pill-container');
//   pillContainer.innerHTML = '';

//   selectedPlayers.forEach(playerName => {
//     let pill = document.createElement('span');
//     pill.className = 'pill';
//     pill.textContent = playerName;

//     pillContainer.appendChild(pill);
//   });

function updatePillDisplayxxx (chosenPlayer) {

  console.log('Função chamada - updatePillDisplay');

  const playerPill = document.createElement('span');
  playerPill.className = 'pill';
  playerPill.textContent = chosenPlayer;

  const xRemovePillButton = document.createElement('button');
  xRemovePillButton.className = 'remove-pill';
  xRemovePillButton.textContent = '×';
  xRemovePillButton.onclick = function() {
    pillContainer.removeChild(playerPill);
  };

  playerPill.appendChild(xRemovePillButton);
  pillContainer.appendChild(playerPill);

};

document.addEventListener("DOMContentLoaded", () => {
  const pillContainer = document.getElementById("pill-container");

  // Função para renderizar uma nova pill
  function addPill(player) {
    const pill = document.createElement("div");
    pill.classList.add("pill");
    pill.dataset.playerId = player.id;
    pill.innerHTML = `<span>${player.name}</span><button class="remove-pill" data-player-id="${player.id}">X</button>`;

    // Event listener para remover pill ao clicar no "X"
    pill.querySelector(".remove-pill").addEventListener("click", () => removePill(player.id));

    pillContainer.appendChild(pill);
  }

  // Função para remover a pill
  function removePill(playerId) {
    const pill = pillContainer.querySelector(`[data-player-id="${playerId}"]`);
    if (pill) {
      pill.remove();
      // Aqui você remove a jogadora do array no backend, por exemplo, enviando uma requisição AJAX
    }
  }

  // Renderizar as pills iniciais
  const initialPlayers = JSON.parse('<%= @temporary_chosen_player_array_display.to_json %>');
  initialPlayers.forEach(player => addPill(player));
});
