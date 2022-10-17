class User < ApplicationRecord
  has_many :books
  has_many :libraries
  has_many :library_additions , through: :libraries, source: :book
  has_one_attached :image
  has_one_attached :uploads
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
