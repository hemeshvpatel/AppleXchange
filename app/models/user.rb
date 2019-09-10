class User < ApplicationRecord
    has_many :listings
    has_many :products, through: :listings
    has_many :reviews
    has_many :comments
    has_many :exchanges
    validates :username, uniqueness: true
    validates :username, length: {minimum: 4}


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
