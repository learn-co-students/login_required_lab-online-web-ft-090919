class SecretsController < ApplicationController
  def show
    if !current_user.present?
      redirect_to login_path
    else
      render template: 'secrets/show'
    end
  end
end