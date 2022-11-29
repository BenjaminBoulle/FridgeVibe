class Ingredient < ApplicationRecord
  belongs_to :fridge

  has_many_attached :photos

  validates :name, :expiration_date, presence: true
end
