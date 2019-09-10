class UsersController < ApplicationController

    def new
    end

    def create
        User.create(user_params)
    end
     
      private
     
      def user_params
        params.require(:user).permit(:first_name, :last_name, :username, :password, :password_confirmation, :likes, :balance)
      end
end
