class ExchangesController < ApplicationController
    #before_action :buyer_toggle, only: [:show, :add_like]
    #before_action :seller_toggle, only: [:show, :add_like]

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

        @buyer = @exchange.buyer
        @seller = @exchange.seller

        if current_user.id == @seller.id
            if @buyer.likes < @buyer.total_exchanges
                @buyer.likes += 1
                #buyer_toggle(toggle) = true
                @buyer.save
            end
        else
            if @seller.likes < @seller.total_exchanges
                @seller.likes += 1
                #seller_toggle.toggle = false
                @seller.save
            end
        end
        
        redirect_to user_path(current_user.id)
    end

    private

    # def buyer_toggle(toggle)
    #     toggle_status = toggle
    #     return !toggle_status
    # end

    # def seller_toggle(toggle)
    #     toggle = false
    # end

    def exchange_params
        params.require(:exchange).permit(:user_id, :listing_id)
    end

    
end
