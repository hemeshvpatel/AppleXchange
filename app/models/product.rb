class Product < ApplicationRecord
    has_many :listings
    has_many :users, through: :listings
    has_many :reviews

    def active_listings
        self.listings.select {|listing| listing.active == true}
    end

    def inactive_listings
        self.listings.select {|listing| listing.active == false}
    end

end
