class Comment < ApplicationRecord
    belongs_to :post
    validates :game_username, presence: true, length: { minimum: 2 }
    validates :body, presence: true, length: { minimum: 10 }
end
