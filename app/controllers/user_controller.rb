class UserController < ApplicationController
    def index
        @users = User.all
        render json: @users, status: 201
    end

    def new 
        @user = User.new 
    end 
    
    def create
        user = User.create(user_params)
        render json: user
    end
    
    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end