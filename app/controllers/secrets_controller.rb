class SecretsController < ApplicationController

    def show
        if !current_user || current_user.blank?
            redirect_to sessions_path(:login)
        end
    end

end