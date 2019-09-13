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

    def edit_iphone
        @listing = Listing.find(params[:id])
    end

    def edit_macbook
        @listing = Listing.find(params[:id])
    end

    def update
        @listing = Listing.find(params[:id])
        @listing.update(listing_params)

        #send a flash notice on the page
        flash[:notice] = "Successfully updated your listing!"

        redirect_to listing_path(@listing)
    end

    private

    def listing_params
        params.require(:listing).permit(:user_id, :product_id, :condition, :color, :storage, :memory, :price, :active)
    end

end