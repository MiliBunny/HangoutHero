class ApplicationController < ActionController::Base
	 before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:price, :physical_activity, :cuisine, :dietary_restrictions, :shopping_venue, :entertainment_type])
        devise_parameter_sanitizer.permit(:account_update, keys: [:price, :physical_activity, :cuisine, :dietary_restrictions, :shopping_venue, :entertainment_type])

  end

end
