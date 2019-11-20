class SecretsController < ApplicationController
  
  def show
    if !current_user || current_user.blank?
      redirect_to login_path
      else
        @user = session[:name]
    end
  end
end 