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
end
