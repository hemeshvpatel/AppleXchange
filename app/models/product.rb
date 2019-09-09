class Product < ApplicationRecord
    has_many :listings
    has_many :users, through: :listings
    has_many :reviews
end
