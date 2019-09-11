class SessionsController < ApplicationController

    def create
      @user = User.find_by(username: params[:user][:username])
      if @user && @user.authenticate(params[:user][:password])
        session[:user_id] = @user.id
        redirect_to home_path
      else
        flash[:error] = "Invalid username or password"
        redirect_to home_path
      end
    end

    def destroy
      session.delete(:user_id)
      redirect_to home_path
    end
  end