class User < ApplicationRecord
    has_many :listings
    has_many :products, through: :listings
    has_many :reviews
    has_many :comments
    validates :username, uniqueness: true

    has_secure_password

    def full_name
        self.first_name + " " + self.last_name
    end

    def active_listings
        self.listings.select {|listing| listing.active == true}
    end

    def inactive_listings
        self.listings.select {|listing| listing.active == false}
    end
end
