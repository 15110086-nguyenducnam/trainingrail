class RegistrationsController < Devise::RegistrationsController

  private

  def after_inactive_sign_up_path_for(resource)
    flash[:success] = "Welcome to the Social!"
    new_user_session_path
  end
end