class RegistrationsController < Devise::RegistrationsController
  def update
    @player = Player.find(current_player.id)

    # Verifica se a senha atual está correta
    if !@player.valid_password?(player_params[:current_password])
      redirect_to edit_player_registration_path, alert: "Invalid current password."
    elsif @player.update_with_password(player_params)
      bypass_sign_in(@player) # Necessário para que o jogador permaneça conectado após a atualização
      redirect_to player_path(@player), notice: "Player was successfully updated."
    else
      render :edit
    end
  end

  private

  def player_params
    params.require(:player).permit(:calling_name, :family_name, :derby_name, :derby_number, :league, :email, :password, :password_confirmation, :current_password)
  end
end
