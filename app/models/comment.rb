class Comment < ApplicationRecord
    belongs_to :post
    belongs_to :user
    validates :body, presence: true, length: { in: 1..250 }
    validates :user_id, presence: true, numericality: { only_integer: true }
    validates :post_id, presence: true, numericality: { only_integer: true }
end
