class Book < ApplicationRecord
    belongs_to :user
    has_one_attached :image
    validates :title, :image ,:price , presence: true
end
