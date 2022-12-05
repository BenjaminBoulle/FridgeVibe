class Recipe < ApplicationRecord
  belongs_to :user
  has_many :reviews

  has_one_attached :photo

  validates :name, :photo, :ingredients, presence: true
end
