class Recipe < ApplicationRecord
  belongs_to :user
  has_many :reviews

  validates :name, :ingredients, presence: true
end
