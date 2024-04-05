class PlayersController < ApplicationController

  def home
  end

  def index
    @players = Player.order(created_at: :desc)
  end

  def show
    @player = Player.find(params[:id])
  end

  # def destroy
    # @player = Player.find(params[:id])
    # @player.destroy
    # redirect_to root_path, notice: "Player deletado com sucesso."
  # end

  # def logout
    # sign_out(current_player)
    # redirect_to root_path, status: :see_other
  # end

end
