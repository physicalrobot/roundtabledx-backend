class UsersController < ApplicationController



    def show
        if current_user
          render json: current_user, status: :ok
        else
          render json: "No current session stored", status: :unauthorized
        end
      end

    def create
        user = User.create(user_params)
        if user.valid?
            #logging our user in and keeping track of them:
            session[:user_id] = user.id             #using user id is conventional 
            #sessions are encrypted by default. This is going to send a cookie to live in our browser that works like a token to keep track of our user throughout the application. 


            render json: user, status: :created
        else 
            render json: user.errors.full_messages, status:
            :unprocessable_entity
        end
    end

    def user_params
        params.permit(:username,:email, :password, :password_confirmation)
    end
end
