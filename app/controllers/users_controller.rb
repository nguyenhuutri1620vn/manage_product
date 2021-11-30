class UsersController < ApplicationController
    def index
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(users_param)
        if @user.save
          redirect_to products_path, notice: "Register successfully."
        else
          render :new
        end
    end
    
    private
    def users_param
        params.require(:user).permit(:email, :password, :password_confirmation, :date_born, :phone)
    end
end
