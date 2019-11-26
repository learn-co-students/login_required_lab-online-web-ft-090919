class SessionsController < SecretsController
    skip_before_action :current_user, only: [:new]
    # this is all written kind of weird, a regular site wouldn't work like this but it's what the tests want without creating models

    def new
    end

    def create
        if params[:name] && !params[:name].empty?
            session[:name] = params[:name]
        else
            redirect_to new_session_path
        end
    end

    def index # using as user homepage
        if current_user.nil?
            redirect_to new_session_path
        end
    end

    def destroy
        if current_user
            session.delete(:name) unless current_user.nil?
        else
            redirect_to new_session_path
        end
    end

end