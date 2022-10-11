# class ReviewsController < ApplicationController
#     rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

#     # GET /review

#     # def index
#     #   reviews = Review.all
#     #   render json: reviews
#     # end

#     def index
#       if params[:galleries_id]
#         galleries = Gallery.find(params[:galleries_id])
#         reviews = galleries.reviews
#       else
#         reviews = Review.all
#       end
#       render json: reviews, include: :galleries
#     end

#     def show
#         reviews = Review.find_by_sql("SELECT reviews.* FROM reviews WHERE reviews.gallery_id = '#{params[:gallery_id]}'")
#         render json: reviews
#     end
  
#     # POST /review
#     def create
#       review = Review.create(review_params)
#       render json: review, status: :created
#     end
#     # POST get specific admin by checking if email exists
#     # def create
#     #     review = Review.find_by_id(params[:id])
#     #     render json: review
#     #   end
  
#     # PATCH /reviews/:id
#     def update
#       review = find_review
#       if review
#         Review.update(review_params)
#         render json: review
#       else
#         render_not_found_response
#       end
#     end
  
#     # DELETE /reviews/:id
#     def destroy
#       review = find_review
#       if review
#         Review.destroy
#         head :no_content
#       else 
#         render_not_found_response
#       end
#     end
  
#     private 
  
#     def review_params
#       params.permit(:id, :user_id,:gallery_id,:review)
#     end
  
#     # def find_review
#     #   Review.find_by(id: params[:id])
#     # end

#     def find_reviews
#       reviews = Review.find_by_galleryId(params[:gallery_id])
#       render json: reviews
#     end
  
#     def render_not_found_response
#       render json: { error: "review not found" }, status: :not_found
#     end
# end
