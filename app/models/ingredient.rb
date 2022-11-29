class Ingredient < ApplicationRecord
  belongs_to :fridge

  has_one_attached :photo

  validates :name, :expiration_date, presence: true
end
