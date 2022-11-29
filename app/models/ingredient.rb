class Ingredient < ApplicationRecord
  belongs_to :fridge

  validates :name, :expiration_date, presence: true
end
