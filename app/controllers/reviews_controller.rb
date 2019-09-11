class ReviewsController < ApplicationController
    def new
        @review = Review.new
    end

    def create
        @product = Product.find(params[:id])
        @review = Review.create(review_params) 
        redirect_to product_path(@product)
    end

    private

    def review_params
        params.require(:review).permit(:product_id, :user_id, :content)
    end
end
