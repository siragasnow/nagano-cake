class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:last_name, :first_name, :kana_last_name, :kana_first_name, :address, :zip_code, :tel])
      devise_parameter_sanitizer.permit(:account_update, keys: [:last_name, :first_name, :kana_last_name, :kana_first_name, :address, :zip_code, :tel])
    end
end
