class AdminsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  #   #sessions for admins controllers
  # def create
  #   admin = Admin.create(admin_params)
  #   if admin.valid?
  #     session[:admin_id] = admin[:id]
  #     render json: admin, status: :created
  #   else 
  #     render json: { errors: ["Not authorized"] }, status: :unprocessable_entity
  #   end
  # end

  # def show
  #   admin = Admin.find_by(id: session[:admin_id])
  #   if admin 
  #     render json: admin, status: :ok
  #   else
  #     render json: { error: "Not authorized" }, status: :unauthorized 
  #   end
  # end
        # GET /admin
          def index
            admins = Admin.all
            render json: admins
          end
        
         
          # POST get specific admin by checking if email exists
          def create
            admin = Admin.find_by_email(params[:email])
            render json: admin
          end
         

          def show
            admin = Admin.find(params[:id])
            render json: admin
          end
          
          # PATCH /admin/:id
          def update
            admin = find_admin
            if admin
              admin.update!(admin_params)
              render json: admin
            else
              render_not_found_response
            end
          end
        
          # DELETE /admin/:id
          def destroy
            admin = find_admin
            if admin
              admin.destroy
              head :no_content
            else 
              render_not_found_response
            end
          end
          private

          def render_not_found_response
            render json: { error: "admin not found" }, status: :not_found
          end
        
          def admin_params
            params.permit(:id, :username, :email, :password_digest)
          end
end
