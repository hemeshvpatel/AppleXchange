class ProductsController < ApplicationController
    def index
        @products = Product.all
    end

    def show
        @product = Product.find(params[:id])
        @review = Review.new
        @review.product_id = @product.id
    end
end
