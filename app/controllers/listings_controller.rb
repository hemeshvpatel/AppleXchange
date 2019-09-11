class ListingsController < ApplicationController
    
    def new_iphone
        @listing = Listing.new
    end

    def new_macbook
        @listing = Listing.new
    end

    def create
        @listing = Listing.create(listing_params)
        redirect_to listing_path(@listing)
    end

    def show
        @listing = Listing.find(params[:id])
        @comment = Comment.new
        @comment.listing_id = @listing.id
    end

    private

    def listing_params
        params.require(:listing).permit(:user_id, :product_id, :condition, :color, :storage, :memory, :price, :active)
    end

end