class ExchangesController < ApplicationController

    def create
        @exchange = Exchange.create(exchange_params)
        @exchange.user.balance - @exchange.listing.price
        @exchange.listing.user + @exchange.listing.price
        @exchange.listing.toggle(:active)
        redirect_to exchange_path(@exchange)
    end

    def show
        @exchange = Exchange.find(params[:id])
    end

    private

    def exchange_params
        params.require(:exchange).permit(:user_id, :listing_id)
    end
end
