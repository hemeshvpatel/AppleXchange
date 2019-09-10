class ProductsController < ApplicationController
    def index
        @products = Product.all
        #byebug
    end

    def show
        @product = Product.find(params[:id])
    end
end
