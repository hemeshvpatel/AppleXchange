class ReviewsController < ApplicationController
    def create
        @review = Review.new(review_params)
        @review.product_id = params[:product_id]
      
        @review.save
      
        redirect_to product_path(@review.product)
    end

    private

    def review_params
        params.require(:review).permit(:product_id, :user_id, :content)
    end
end
