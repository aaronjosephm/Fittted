class UsersController < ApplicationController
  def profile
    authorize current_user
  end

  def set_preferences
    current_user.update(set_preferences_params)
    authorize current_user
    redirect_to home_path
  end

  private

  def set_preferences_params
    params.permit(:body_type, :color_preference)
  end
end
