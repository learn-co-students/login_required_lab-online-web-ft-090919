class SessionsController < ApplicationController
    def new
        
    end

    def create
        if !params[:name] || params[:name].empty? 
            redirect_to login_path
        else
            session[:name] = params[:name]
            render 'welcome'
        end
    end

    def destroy
        if session[:name]
            session.delete :name
            redirect_to root_path
        else
            redirect_to root_path
        end
    end
end
