//officials_in_the_game.js

console.log("Testando o arquivo officials_in_the_game.js");

// Ouça o evento 'turbolinks:load' para garantir que o DOM esteja pronto
document.addEventListener('turbolinks:load', function() {
  // Verifica se o selectBox está no DOM
  const selectBox = document.getElementById('playerSelectBox');

  if (selectBox) {
    console.log('O selectBox foi encontrado no DOM:', selectBox);
  } else {
    console.error('O selectBox não foi encontrado no DOM.');
  }
});


function addPlayer(chosenPlayer) {

  console.log("ID da jogadora selecionada:", chosenPlayer); // Adicione esta linha

  const selectBox = document.getElementById('playerSelectBox');

  if (selectBox) {
    selectBox.value = chosenPlayer;
  } else {
    console.error('Elemento selectBox não encontrado');
  }

  // Envia o ID da jogadora selecionada para o Ruby
  fetch('http://localhost:3000/update_chosen_players', {
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

      console.log('Função chamadax');

      updateTemporaryChosenPlayersDisplay();
      refreshSelectbox();

      } else {
      console.error('Falha ao adicionar jogadora:', response.message);
    }
  })
  .catch(error => console.error('Erro ao adicionar jogadora:', error));
}

function updateTemporaryChosenPlayersDisplay() {

  console.log('Função chamada');

  fetch('/current_chosen_players')
    .then(response => response.json())
    .then(data => {

      console.log('Dados recebidos:', data.chosen_players);

      const displayElement = document.getElementById('array-display');
      if (displayElement) {
        // Acessar apenas os IDs e atualizá-los no array-display
        const playerIds = data.chosen_players.map(player => player.id).join(', ');
        displayElement.textContent = playerIds;

        console.log('Atualizando array-display com:', playerIds);
      } else {
        console.error('Elemento #array-display não encontrado no DOM');
      }
    })
    .catch(error => console.error('Erro ao buscar jogadoras escolhidas:', error));
}

function refreshSelectbox() {
  let html;

  // Faz uma requisição AJAX para o controlador que renderiza a select box
  fetch('/refresh_selectbox')
    .then(response => response.text())
    .then(data => {
      html = data

  //       // Substitui a select box existente pelo novo conteúdo
  //       document.getElementById('playerSelectBox').innerHTML = html;

  //       console.log('Select box atualizado');

  //     })
  //     .catch(error => console.error('Erro ao atualizar selectbox:', error));
  // }

  const playerSelectBox = document.getElementById('playerSelectBox');

  // const playerSelectBox = document.getElementById('playerSelectBox');
  if (playerSelectBox) {
    playerSelectBox.innerHTML = html;
    console.log('Select box atualizado');
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
