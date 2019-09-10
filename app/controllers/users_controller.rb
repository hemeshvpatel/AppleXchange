class UsersController < ApplicationController
  before_action :require_login, only: [:show]

    def new
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
          redirect_to login_path
        else
          redirect_to new_user_path
        end
    end

    def show
      @user = User.find_by(id: session[:user_id])
    end
     
      private
     
      def user_params
        params.require(:user).permit(:first_name, :last_name, :username, :password, :password_confirmation, :likes, :balance)
      end

      def require_login
        return head(:forbidden) unless session.include?(:user_id)
      end
end
