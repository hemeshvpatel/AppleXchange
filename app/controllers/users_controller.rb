class UsersController < ApplicationController
  before_action :require_login, only: [:show]

    def new
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
          redirect_to home_path
        else
          redirect_to new_user_path
        end
    end

    def show
      @user = User.find_by(id: session[:user_id])
    end

    def add
      @user = User.find_by(id: session[:user_id])
    end

    def add_money
      @user = User.find_by(id: session[:user_id])

      if !params[:user][:amount].empty?
        @user.balance += params[:user][:amount].to_f
        @user.save
        redirect_to user_path(@user)
      else
        redirect_to addmoney_path
      end
    end

    def edit
      @user = User.find_by(id: session[:user_id])
    end

    def update
      @user = User.find_by(id: session[:user_id])
      @user.update(user_params)
      if @user.valid?
        redirect_to user_path(@user)
      else
        redirect_to edit_user_path(@user)
      end
    end
     
      private
     
      def user_params
        params.require(:user).permit(:first_name, :last_name, :username, :password, :password_confirmation, :likes, :balance)
      end

      def require_login
        return head(:forbidden) unless session.include?(:user_id)
      end
end
