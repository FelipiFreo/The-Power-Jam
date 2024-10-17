class GamesController < ApplicationController
  def menu
    # Game.first.destroy
    @old_games = Game.where(game_is_over: true)
    @open_games = Game.where(game_is_over: false)
    @games = Game.all
  end

  def show
    @game_show = Game.find(params[:id])

  end

####################################

  def new_game
    @new_game = Game.new
  end

  def create_game
    @new_game = Game.new(game_params)
    @game_creator = current_player
    # Atenção!
    # é preciso fazer uma migration para incluir o game_creator ou game_owner na tabela games

    if @new_game.save
      flash.now[:notice] = "Novo jogo criado com sucesso!"
      redirect_to game_path(@new_game)
    else
      flash.now[:alert] = "Não foi possível criar um novo jogo."
      render :new_game
    end
  end



############################################

  def rooster
    # @rooster = Player_in_the_rooster.new
  end

  def add_player_in_the_rooster
    # clicar e adcionar
  end

  private

  def game_params
    params.require(:game).permit(:game_date, :game_time, :game_location_nickname, :game_map_address, :game_is_over)
  end

  def officials_in_the_game_params
    params.require(:officials_in_the_game).permit(:game_id, :official_position_id, :player_id, :is_shadowing)
  end

end


#####################################

#games_controller.rb

def officials_in_the_game

  show
  # @temporary_chosen_players_array = []
  @temporary_chosen_players_array = [1, 2, 3]


  @players = Player.all

  @official_position = OfficialPosition.all

  @officials_in_the_game = OfficialsInTheGame.where(game_id: @game_show.id)

  @officials_in_the_game = [] if @officials_in_the_game.empty?


  temporary_chosen_players_array_update

  session_update

end





def create_officials_in_the_game
  # o nome mais adequado para essa classe seria algo como create_or_update
  # mudar o nome dessa classe aqui e onde precisar

  # Encontra ou inicializa um registro para o jogo e a posição oficial
  @official = OfficialsInTheGame.find_or_initialize_by(
    game_id: officials_in_the_game_params[:game_id],
    official_position_id: officials_in_the_game_params[:official_position_id]
    )

    # Atualiza o registro com os parâmetros fornecidos
    @official.assign_attributes(officials_in_the_game_params)

    if @official.save
      flash.now[:notice] = "Equipe de arbitragem salva com sucesso!"
      redirect_to game_path(@official.game_id)
    else
      flash.now[:alert] = "Não foi possível salvar a equipe de arbitragem."
      render :officials_in_the_game
    end
end


  # private

  # Métodos auxiliares
  def session_update
    session[:chosen_players] = @temporary_chosen_players_array
  end

  def temporary_chosen_players_array_update
    @temporary_chosen_players_array = session[:chosen_players] || [1]
    @temporary_chosen_players_array = [1, 2, 3]

  end

  def player_exists?(player_id)
    @temporary_chosen_players_array.include?(player_id)
  end


  # métodos de negócios
  def manage_temporary_chosen_players_array

    temporary_chosen_players_array_update

    session_update
  end

  def add_player_to_temp_array(player_id)
    return if player_exists?(player_id)

    @temporary_chosen_players_array << player_id

    session_update
  end

  def remove_player_from_temp_array(player)
    return unless player_exists?(player)

    @temporary_chosen_players_array.delete(player)

    session_update
  end


  def update_chosen_players
    player_id = params[:chosen_player_id]

    add_player_to_temp_array(player_id)

    Rails.logger.debug "Array temporária após adicionar jogadora: #{@temporary_chosen_players_array.inspect}"

    render json: { success: true }
  end

  def current_chosen_players

    chosen_players = @temporary_chosen_players_array || []

    Rails.logger.debug "Jogadoras escolhidas: #{chosen_players.inspect}"

    render json: { chosen_players: chosen_players}
  end

  def refresh_selectbox
    render partial: 'selectbox'
  end

  def chosen_players_array
    @temporary_chosen_players_array || []
  end

  def lista_filtrada
   # @temporary_chosen_players_array = [1, 2, 3]

   @temporary_chosen_players_array = [1] if @temporary_chosen_players_array.nil?


    Player.all.reject { |player| @temporary_chosen_players_array.include?(player.id)}
  end
