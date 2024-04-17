class GamesController < ApplicationController
  def menu
    # Game.first.destroy
    @old_games = Game.where(game_is_over: true)
    @open_games = Game.where(game_is_over: false)
    @games = Game.all

  end


  def new_game
    @new_game = Game.new(game_is_over: false)
    if @new_game.save
      flash.now[:notice] = "Novo jogo criado com sucesso!"
    else
      flash.now[:alert] = "Não foi possível criar um novo jogo."
    end
    render :new_game

    # @new_game.game_date
    # @new_game.game_time
    # @new_game.game_location_nickname
    # @new_game.game_map_address

    # t.string :game_name
    # t.date :game_date
    # t.time :game_time
    # t.string :game_location_nickname
    # t.string :game_map_address
    # t.boolean :game_is_over

  end

  def rooster
    # @rooster = Player_in_the_rooster.new
  end

  def add_player_in_the_rooster
    # clicar e adcionar
  end

end
