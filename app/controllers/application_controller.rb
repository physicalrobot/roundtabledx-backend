class ApplicationController < ActionController::API
        include ActionController::Cookies

    private

    def current_user
        User.find_by(id: session[:user_id])
    end

    def show
        if current_user
          render json: current_user, status: :ok
        else
          render json: "No current session stored", status: :unauthorized
        end
    end

    def current_user
        User.find_by(id: session[:user_id])
    end


end
