class Book < ApplicationRecord
    belongs_to :user
    has_one_attached :image
    has_one_attached :uploads
    has_many :libraries
    has_many :added_books, through: :libraries, source: :user 
    validates :title, :image ,:price ,:uploads , presence: true
end
