class SessionsController < ApplicationController
    def new
    end

    def create
      @user = User.find_by(username: params[:user][:username])
      if @user && @user.authenticate(params[:user][:password])
        session[:user_id] = @user.id
        redirect_to home_path
      else
        redirect_to login_path
      end
    end

    def destroy
      session.delete :username
      redirect_to home_path
    end
  end