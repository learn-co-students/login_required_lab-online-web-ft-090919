class SessionsController < ApplicationController

    def create
        if params[:name].present?
            session[:name] = params[:name]
        else
            redirect_to '/'
        end
    end

    def destroy
        if session[:name]
            session.delete :name
        end
        redirect_to '/login'
    end

end
