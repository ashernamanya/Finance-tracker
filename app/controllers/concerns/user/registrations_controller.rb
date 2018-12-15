class User::RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_parameters
  redirect_to welcome_path
  
  protected
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :country, :birthdate])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :country, :birthdate])
  end
  
end
