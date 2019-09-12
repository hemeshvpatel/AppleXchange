class Comment < ApplicationRecord
    belongs_to :listing
    belongs_to :user, optional: true

    def display_timestamp
        self.created_at.strftime("posted on %a %b %e %Y at %l:%M %p")
    end
end
