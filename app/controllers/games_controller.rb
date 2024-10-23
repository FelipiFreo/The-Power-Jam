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


 private

  def game_params
    params.require(:game).permit(:game_date, :game_time, :game_location_nickname, :game_map_address, :game_is_over)
  end

end
