class OfficialsInTheGameController < ApplicationController

  before_action :set_temporary_chosen_players_array

  def set_temporary_chosen_players_array
    # @temporary_chosen_players_array = [1, 2, 3, 4]

    # session[:temporary_chosen_players_array] = []

    @temporary_chosen_players_array = session[:temporary_chosen_players_array] || []

  end

  ########################################

  def officials_in_the_game
    @game_show = Game.find(params[:game_id])

    @players = Player.all

    @official_position = OfficialPosition.all

    @officials_in_the_game = OfficialsInTheGame.where(game_id: @game_show.id)

    # parece que não rpecisa da linha abaixo porque a consulta acima já faz isso
    # @officials_in_the_game = [] if @officials_in_the_game.empty?

    @lista_filtrada = lista_filtrada

    @jogadoras_selecionadas = Player.where(id: @temporary_chosen_players_array) || []

      # # Outros códigos...
      # logger.debug "Temporary Chosen Players Array: #{@temporary_chosen_players_array.inspect}"
      # @filtered_players = lista_filtrada
      # logger.debug "Filtered Players: #{@filtered_players.inspect}"
      # # Outros códigos...



  end

  def create_officials_in_the_game
    # o nome mais adequado para esse método seria algo como create_or_update
    # mudar o nome dessa classe aqui e onde precisar

    # Encontra ou inicializa um registro para o jogo e a posição oficial
    @official = OfficialsInTheGame.find_or_initialize_by(
      game_id: officials_in_the_game_params[:game_id],
      official_position_id: officials_in_the_game_params[:official_position_id]
      )

      # Atualiza o registro com os parâmetros fornecidos
      @official.assign_attributes(officials_in_the_game_params)

      if @official.save
        flash[:notice] = "Equipe de arbitragem salva com sucesso!"
        redirect_to game_path(@official.game_id)
      else
        flash.now[:alert] = "Não foi possível salvar a equipe de arbitragem."
        render :officials_in_the_game
      end
  end

  #######################################



  def lista_filtrada
    # @temporary_chosen_players_array = [] if @temporary_chosen_players_array.nil?
    Player.all.reject { |player| @temporary_chosen_players_array.include?(player.id) }
  end

  def update_chosen_players
    chosen_player_id = params[:chosen_player_id]

    Rails.logger.debug "ID da jogadora recebida: #{chosen_player_id}" # Adicione esta linha


    add_chosen_player_to_temporary_array(chosen_player_id)

    render json: { success: true }
  end

  def add_chosen_player_to_temporary_array(chosen_player_id)
    chosen_player_id = chosen_player_id.to_i
    return if player_exists?(chosen_player_id)

    @temporary_chosen_players_array << chosen_player_id
    session[:temporary_chosen_players_array] = @temporary_chosen_players_array
  end

  def remove_chosen_player_from_temporary_array(chosen_player_id)
    return unless player_exists?(chosen_player_id)

    @temporary_chosen_players_array.delete(chosen_player_id)
    session[:temporary_chosen_players_array] = @temporary_chosen_players_array
  end

  def player_exists?(player_id)
    @temporary_chosen_players_array.include?(player_id)
  end

  def current_chosen_players

    # chosen_players = @temporary_chosen_players_array || []
    chosen_players = Player.where(id: @temporary_chosen_players_array).select(:callign_name, :derby_number)

    render json: { chosen_players: chosen_players }

  end


  def refresh_selectbox
    render partial: 'shared/selectbox' #, locals: { lista_filtrada: lista_filtrada }
    # render plain: "carregado"
  end



  private

  def officials_in_the_game_params
    params.require(:officials_in_the_game).permit(:game_id, :official_position_id, :player_id, :is_shadowing)
  end


end
