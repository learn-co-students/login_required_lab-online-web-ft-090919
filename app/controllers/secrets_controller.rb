class SecretsController < ApplicationController
    
    def show
        current_user.nil? ? redirect_to('/') : render('show')
    end
   
end