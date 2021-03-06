class UsersController < ApplicationController

    #create new user and encoded token
    def create
        user = User.create(user_params)
        if user.valid?
            #encode token
            token = encode_token(user_id: user.id)
            render json: { user: UserSerializer.new(user), jwt: token }, status: :created
        else
            render json: user.errors.full_messages, status: :not_acceptable
        end
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
