class SessionsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:create]

  def create
    if params[:name] && !params[:name].empty?
      session[:name] = params[:name]
      redirect_to '/'
    else
      redirect_to '/login'
    end
  end

  def destroy
    session.delete(:name)
    redirect_to '/'
  end

end
