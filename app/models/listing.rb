class Listing < ApplicationRecord
    belongs_to :product
    belongs_to :user, optional: true
    has_one :exchange
    has_many :comments
    validates :price, presence: true

    def set_user!(user)
        self.user_id = user.id
        self.save!
    end

    def display_price
        '%.2f' % self.price
    end

end