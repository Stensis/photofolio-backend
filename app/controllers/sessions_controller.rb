class SessionsController < ApplicationController
    before_action :authorize
    skip_before_action :verify_authenticity_token
    skip_before_action :authorize, only: [:create]

  #   user
    def create 

      user = User.find_by(email: params[:email], password_digest: params[:password])
      if user
        session[:user_id] = user[:id]
        render json: user, status: :ok
      else
        render json: { errors: ["Invalid username or password"] }, status: :unauthorized
      end
    end 

    def show
      user = User.find_by(id: session[:user_id])
      if user
        render json: user
      else
        render json: { error: "Not authorized" }, status: :unauthorized
      end
    end
    
  
    def destroy
      session.delete :user_id
      render json: {message: "logged_out"}, status: :ok
    end

    # #admin 
    # def create 
    #   admin = Admin.find_by(username: params[:username])
    #   if admin&.authenticate(params[:password])
    #     session[:admin_id] = admin[:id]
    #     render json: admin, status: :created
    #   else
    #     render json: { errors: ["Invalid username or password"] }, status: :unauthorized
    #   end
    # end 
  
    # def destroy
    #   session.delete :admin_id
    #   head :no_content
    # end
  
    private
  
    def authorize
      render json: { errors: ["Not authorized"] }, status: :unauthorized unless session.include? :user_id
    end

    # def authorize
    #   render json: { errors: ["Not authorized"] }, status: :unauthorized unless session.include? :admin_id
    # end
  end
  

