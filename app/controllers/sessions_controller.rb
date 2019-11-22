class SessionsController < ApplicationController

  def index
      redirect_to login_path
  end

  def show
      if current_user
          @name = current_user
          #redirect_to login_path
      else
          redirect_to login_path
      end
  end

  def new
  end


  def create
      if !params[:name].empty? && !params[:name].blank?
          session[:name] = params[:name]
          redirect_to show_path
      else
          redirect_to login_path
      end
  end

  def destroy
      if current_user
          session.delete :name
          redirect_to login_path
      end
  end


end 