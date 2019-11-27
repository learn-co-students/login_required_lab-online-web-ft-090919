class SecretsController < ApplicationController 

 before_action :require_login


    def welcome
    end 

    def show
    end 


private 

    def require_login
       redirect_to '/' unless session.include? :name
    end 

end 