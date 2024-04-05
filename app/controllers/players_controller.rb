class PlayersController < ApplicationController

  before_action :require_login, only: :home

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

  private

  def require_login
    unless logged_in?
      flash[:error] = "Você precisa estar logada"
      redirect_to new_player_session_path
    end
  end

  def logged_in?
    player_signed_in?
  end

end
