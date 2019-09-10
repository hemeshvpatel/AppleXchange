class ListingsController < ApplicationController
    
    def new_phone
        @listing = Listing.new
    end

    def create
        @listing = Listing.create(listing_params)
        redirect_to listing_path(@listing)
    end

    def show
        @listing = Listing.find(params[:id])
    end

    private

    def listing_params
        params.require(:listing).permit(:user_id, :product_id, :condition, :color, :storage, :memory, :price, :active)
    end

end