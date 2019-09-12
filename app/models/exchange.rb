class Exchange < ApplicationRecord
    belongs_to :listing
    belongs_to :user

    def buyer
        self.user
    end

    def seller
        self.listing.user
    end

    def buy
        buyer.balance = buyer.balance - self.listing.price
        buyer.save
    end

    def sell
        seller.balance = seller.balance + self.listing.price
        seller.save
    end

    def display_purchase
        "#{self.listing.product.name} purchased from #{self.seller.full_name} on #{self.created_at.strftime("%b %e %Y")}"
    end

    def display_sale
        "#{self.listing.product.name} sold to #{self.buyer.full_name} on #{self.created_at.strftime("%b %e %Y")}"
    end

end
