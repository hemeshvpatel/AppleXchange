class Listing < ApplicationRecord
    belongs_to :product
    belongs_to :user
    has_many :comments

    def set_user!(user)
        self.user_id = user.id
        self.save!
    end
end
