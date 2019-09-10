class ListingsController < ApplicationController
    def new_phone
        @listing = Listing.new
    end

    def create
        @listing = Listing.create(params[listing_params])
    end

    private

    def listing_params
        params.require(:listing).permit(:user_id, :product_id, :condition, :color, :storage, :memory, :price, :active)
    end

end