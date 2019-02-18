class UsersController < ApplicationController

    def index
    end

    def register
        @user = User.new
    end

    def create 
        @user = User.new(user_params)  
        if @user.save
            
            session[:checkuser_id] = @user.id   
            redirect_to sessions_new_path
        else 
            render 'register'
        end
    end

    def min
    end


    private 
    def user_params
        params.require(:users).permit(:name,:emil,:password)
    end

end
