class SessionsController < ApplicationController

    def new
    end

    def create
        current_user.present? ? render('logged_in') : redirect_to('/')
        session[:name] = params[:name]
    end

    def destroy
        session.delete :name
    end

end