class Exchange < ApplicationRecord
    belongs_to :listing
    belongs_to :user

    def buy
        self.user.balance = self.user.balance - self.listing.price
        self.user.save
    end

    def sell
        self.listing.user.balance = self.listing.user.balance + self.listing.price
        self.listing.user.save
    end
end
