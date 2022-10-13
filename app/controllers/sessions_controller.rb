class SessionsController < ApplicationController
    before_action :authorize
    # before_action :authenticate_user, except: [:new]
    skip_before_action :authorize, only: :create
  #   user
    def create 
      user = User.find_by(email: params[:email])
      if user&.authenticate(params[:password])
        session[:user_id] = user[:id]
        render json: user, status: :created
      else
        render json: { errors: ["Invalid username or password"] }, status: :unauthorized
      end
    end 
  
    def destroy
      session.delete :user_id
      head :no_content
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
  

