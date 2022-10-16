class Book < ApplicationRecord
    belongs_to :user
    has_one_attached :image
    has_many :libraries
    has_many :added_books, through: :libraries, source: :user 
    validates :title, :image ,:price , presence: true
end
