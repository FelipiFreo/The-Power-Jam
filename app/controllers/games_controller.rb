class GamesController < ApplicationController
  def menu
    # Game.first.destroy
    @old_games = Game.where(game_is_over: true)
    @open_games = Game.where(game_is_over: false)
    @games = Game.all

  end


  def new_game
    @new_game = Game.new(game_is_over: true)
    if @new_game.save
      flash.now[:notice] = "Novo jogo criado com sucesso!"
    else
      flash.now[:alert] = "Não foi possível criar um novo jogo."
    end
    render :new_game
  end



end
