class ExchangesController < ApplicationController

    def create
        @exchange = Exchange.create(exchange_params)
        @exchange.buy
        @exchange.sell
        @exchange.listing.toggle(:active).save!
        @exchange.save
        redirect_to exchange_path(@exchange)
    end

    def show
        @exchange = Exchange.find(params[:id])
    end

    def add_like
        @exchange = Exchange.find(params[:id])

        @buyer = @exchange.user
        @seller = @exchange.listing.user

        if current_user.id == @seller.id
            @buyer.likes += 1
            @buyer.save
        else 
            @seller.likes += 1
            @seller.save
        end
        
        redirect_to exchange_path(@exchange)
    end

    private

    def exchange_params
        params.require(:exchange).permit(:user_id, :listing_id)
    end

    
end
