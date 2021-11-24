class UsersController < ApplicationController
    def show
        user = User.find_by(user_params)
        render json: user, include: :items
    end


    private 

    def user_params 
        user = params.permit(:id)
    end


end
