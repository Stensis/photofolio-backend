# class BookingsController < ApplicationController
#         rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    
#         # GET /booking
#         def index
#           bookings = Booking.all
#           render json: bookings
#         end
    
#         def show
#             booking = Booking.find(params[:id])
#             render json: booking
#         end
      
#         # POST /booking
#         def create
#           booking = Booking.create!(booking_params)
#           render json: booking, status: :created
#         end
      
#         # PATCH /bookings/:id
#         def update
#           booking = find_booking
#           if booking
#             Booking.update(booking_params)
#             render json: booking
#           else
#             render_not_found_response
#           end
#         end
      
#         # DELETE /bookings/:id
#         def destroy
#           booking = find_booking
#           if booking
#             Booking.destroy
#             head :no_content
#           else 
#             render_not_found_response
#           end
#         end
      
#         private 
      
#         def booking_params
#           params.permit(:id, :category, :image ,:tittle ,:date)
#         end
      
#         def find_booking
#           Booking.find_by(id: params[:id])
#         end
      
#         def render_not_found_response
#           render json: { error: "booking not found" }, status: :not_found
#         end
#     end
