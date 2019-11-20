class SessionsController < ApplicationController
  
  def login 
  end 
  
  def create 
    if !params[:name] || params[:name].empty? 
      redirect_to login_path 
    else 
      session[:name] = params[:name]
    end 
  end 
  
  def destroy 
    if session[:name]
      session.delete(:name)
    end 
  end 
  
end 