# class GalleriesController < ApplicationController
#     rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

#     # GET /gallery

#     def show
#       galleries = Gallery.find(params[:id])
#       render json: galleries
#     end
# #
#     def index
#       galleries = Gallery.all
#       render json: galleries, include: ['reviews']
#     end

#     # def reviews_index
#     #   reviews = Review.find_by_gallery_id(params[:galleries_id])
#     #   render json: reviews
#     # end
  
#     # def review
#     #   review = Review.find(params[:id])
#     #   render json: review, include: :galleries
#     # end

#     def show
#         gallery = Gallery.find(params[:id])
#         render json: gallery
#     end
  
#     # POST /gallery
#     def create
#       gallery = Gallery.create!(gallery_params)
#       render json: gallery, status: :created
#     end
  
#     # PATCH /galleries/:id
#     def update
#       gallery = find_gallery
#       if gallery
#         Gallery.update(gallery_params)
#         render json: gallery
#       else
#         render_not_found_response
#       end
#     end
  
#     # DELETE /galleries/:id
#     def destroy
#       gallery = find_gallery
#       if gallery
#         Gallery.destroy
#         head :no_content
#       else 
#         render_not_found_response
#       end
#     end
  
#     private 
  
#     def gallery_params
#       params.permit(:id, :category, :image ,:title ,:date)
#     end

#     def find_gallery
#       Gallery.find_by(id: params[:id])
#     end
  
#     def render_not_found_response
#       render json: { error: "gallery not found" }, status: :not_found
#     end
# end
