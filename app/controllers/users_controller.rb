class UsersController < ApplicationController
    before_action :require_logged_in, only: [:index, :show, :edit, :update, :delete]
    
    def index
        @users = User.all
        render :index
    end

    def new
        @user = User.new
        render :new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            # go to new session?
            # add some code here to automatically logs in the user after account creation
            login!(@user)
            render :show
        else
            render :new
        end
    end

    def show
        @user = User.find(params[:id])
        render :show
    end

    private

    def user_params
        params.require(:user).permit(:username, :email, :company, :location, :password)
    end
    
end