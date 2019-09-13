class User < ApplicationRecord
    has_many :listings
    has_many :products, through: :listings
    has_many :reviews
    has_many :comments
    has_many :exchanges
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :username, presence: true
    validates :username, uniqueness: true
    validates :username, length: {minimum: 4}
    validates :balance, presence: true

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

    def sales
        self.inactive_listings.map {|listing| listing.exchange}
    end

    def purchases
        self.exchanges
    end

    def total_purchases
        purchases.size
    end 

    def total_sales
        sales.size
    end

    def total_exchanges
        total_purchases + total_sales
    end

    def display_likes
        current_likes = self.likes
        myexchanges = self.exchanges.size + self.inactive_listings.size

        if current_likes >= myexchanges
            current_likes = myexchanges
            self.save
        else  
            current_likes = self.likes
        end
        current_likes
    end

    def approval_rating
        mylikes = self.display_likes.to_f
        myexchanges = self.exchanges.size.to_f + self.inactive_listings.size.to_f
        approvalpercent = ""

        if mylikes == 0 || myexchanges == 0 
            approvalpercent = "0%"
        else 
            approvalrating = (mylikes.to_f / myexchanges.to_f) * 100
            approvalpercent = "#{approvalrating.to_i}%"
        end
        approvalpercent
    end

    def display_balance
        '%.2f' % self.balance
    end

end
