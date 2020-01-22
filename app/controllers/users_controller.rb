class UsersController < ApplicationController

    def create
        byebug
    end

    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find_by(id: params[:id])
        if user
            render json: user
        else
            render json: {message: "No user was found on that id."}
        end
    end

    private
    
    def user_params
        params.permit(:username, :password, :profile_pic)
    end

end
