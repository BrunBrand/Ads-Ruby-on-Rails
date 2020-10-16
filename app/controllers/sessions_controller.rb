class SessionsController < ApplicationController
    def new
        @user = User.new
    end

    def create
        user = User.find_by(email: params[:user][:email])
        if user && user.authenticate(params[:user][:password])
        user.authenticate(params[:user][:password]) #bcrypt method to authenticate
        reset_session
        session[:user_id] = user.id
        redirect_to root_path, notice: translate(".welcome", name: user.name)
        else
            redirect_to new_session_path, alert: translate(".invalid_credentials")
        end
        
    end


    def destroy
        reset_session
        redirect_to new_session_path, notice: translate(".session_finished")
    end

end