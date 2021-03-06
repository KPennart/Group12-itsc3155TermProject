class Post < ApplicationRecord
    has_many :comments, dependent: :delete_all
    validates :title, presence: true, length: { minimum: 2 }
    validates :title_of_the_game, presence: true, length: { minimum: 2 }
    validates :game_username, presence: true, length: { minimum: 2 }
    validates :text, presence: true, length: { minimum: 10 }
end
