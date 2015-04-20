class RegistrationsController < Devise::RegistrationsController

  def update
    # required for settings form to submit when password is left blank
    if params[:user][:password].blank?
      params[:user].delete("password")
      params[:user].delete("password_confirmation")
    end

    @user = current_user
    if @user.update_attributes(user_params)
      set_flash_message :notice, :updated
      # Sign in the user bypassing validation in case his password changed
      sign_in @user, :bypass => true
      redirect_to after_update_path_for(@user)
    else
      render "edit"
    end
  end

  protected

  def user_params
    params[:user].permit(:first_name, :last_name, :username, :password, :password_confirmation)
  end

  # Overwriting the redirect path after profile update
  def after_update_path_for(resource)
    # edit_user_registration_path(resource)
    root_path
  end

  # Overwriting update_resource to save user data without entering a password
  def update_resource(resource, user_params)
    resource.update_without_password(user_params)
  end

end
