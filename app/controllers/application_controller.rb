class ApplicationController < ActionController::Base
  protect_from_forgery
<<<<<<< HEAD
     force_ssl

   def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    helper_method :current_user
=======
>>>>>>> dd6f96aa6c788079a1ea6933ffbd8b3916b205e2
end
