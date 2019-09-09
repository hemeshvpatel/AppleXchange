class SessionsController < ApplicationController
    def create
      @user = User.find_by(username: params[:user][:username])
      return head(:forbidden) unless @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to home_path
    end
  end