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

    if @new_game.save
      flash.now[:notice] = "Novo jogo criado com sucesso!"
      redirect_to game_path(@new_game)
    else
      flash.now[:alert] = "Não foi possível criar um novo jogo."
      render :new_game
    end
  end

#####################################

  def ref_team
    @game_show = Game.find(params[:game_id])
    @official_position = OfficialPosition.all
    @ref_team = OfficialsInTheGame.new(game_id: @game_show.id)

  rescue ActiveRecord::RecordNotFound
    flash[:alert] = "Jogo não encontrado"
    redirect_to games_path

  end

  def create_ref_team
      @ref_team = OfficialsInTheGame.new(ref_team_params)

    if @ref_team.save
      flash.now[:notice] = "Equipe de arbitragem criada com sucesso!"
      redirect_to game_path(@game_show)
    else
      flash.now[:alert] = "Não foi possível criar a equipe de arbitragem."
      render :ref_team
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

  def ref_team_params
    params.require(:create_ref_team).permit(:game_id, :official_position_id, :player_id, :is_shadowing)
  end

end
