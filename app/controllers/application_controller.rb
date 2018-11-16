class ApplicationController < ActionController::Base

    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action  :check_signup

    protected
    def check_signup
        unless user_signed_in?
          '/register/cmon_let_me_in'
        end
    end
    def after_sign_in_path_for(resource)
      '/logged_in'
    end

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :avatar])
        devise_parameter_sanitizer.permit(:account_update, keys: [:name, :avatar])
    end
end
