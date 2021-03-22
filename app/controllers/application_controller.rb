class ApplicationController < ActionController::Base
   before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  private
  def configure_permitted_parameters
     devise_parameter_sanitizer.permit(:sign_in, keys: [:name])
     devise_parameter_sanitizer.permit(:sign_up, keys: [
      :name,
      :email,
      :phone_number,
      :based_in,
      :job_category_id
    ])
  end
end
