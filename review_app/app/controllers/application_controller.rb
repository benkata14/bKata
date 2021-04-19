class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    private
        def current_user
            @current_user ||=Profile.find(session[ :profile_id]) if session[ :profile_id]
        end
    
    def authorize
        redirect_to new_session_path, alert: 'Please Log in or Sign up' if current_user.nil?
    end
    helper_method :current_user
end
