class OfficialsInTheGameController < ApplicationController

  before_action :set_temporary_chosen_players_array

  def set_temporary_chosen_players_array
    @temporary_chosen_players_array = [1, 2, 3]
  end


  def lista_filtrada
    #    @temporary_chosen_players_array = [1] if @temporary_chosen_players_array.nil?

    Player.all.reject { |player| @temporary_chosen_players_array.include?(player.id) }
  end

  def update_chosen_players
    chosen_player_id = params[:chosen_player_id]

    add_chosen_player_to_temporary_array(chosen_player_id)

    render json: { success: true }
  end

  def add_chosen_player_to_temporary_array(chosen_player_id)
    return if player_exists?(chosen_player_id)

    @temporary_chosen_players_array << chosen_player_id

  end

  def remove_chosen_player_from_temporary_array(chosen_player_id)
    return unless player_exists?(chosen_player_id)

    @temporary_chosen_players_array.delete(chosen_player_id)

  end

  def player_exists?(player_id)
    @temporary_chosen_players_array.include?(player_id)
  end

  def current_chosen_players

    chosen_players = @temporary_chosen_players_array || []

    render json: { chosen_players: chosen_players }

  end

  def refresh_selectbox
    render partial: 'selectbox'
  end
