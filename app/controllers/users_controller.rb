class UsersController < ApplicationController
    before_action :find_user, only: [:update, :show, :destroy]

    # show all users
    def index
        users = User.all
        render json: users, include: :trips, status: :ok
    end

    # create a user
    def create
        user = User.create!(user_params)
        render json: user, status: :created
    end

    # show user users/:id
    def show
        render json: @user, include: :trips, status: :ok
    end

    # update user users/:id
    def update
        @user.update!(user_params)
        render json: @user, status: :ok
    end

    # destroy user users/:id
    def destroy
        @user.destroy
        head :no_content
    end


    private

    def find_user
         @user = User.find_by(id: params[:id])
    end

    def user_params
        params.permit(:username, :age)
    end


    
end
