class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    if current_user.role == 'tierOneAdmin'
      tier_one_links_path
    elsif current_user.role == 'tierTwoAdmin'
      tier_two_links_path
    elsif current_user.role == 'tierThreeAdmin'
      tier_three_links_path
    else
      users_path 
    end 
  end
  
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end

end
