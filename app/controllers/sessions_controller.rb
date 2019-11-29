class SessionsController < ApplicationController
    def create
        @user = User.find_by(username: params[:user][:username])
        if @user && @user.authenticate(params[:user][:password])
          session[:user_id] = @user.id
          render json: @user
        end
      end

    def destroy
        reset_session
    end 
    
    def user_params
        params.require(:user).permit(:name, :email, :password)
    end
end