class Ingredient < ApplicationRecord
  attr_accessor :amount, :type

  TYPE = ['g', 'kg', 'ml', 'cl', 'l', 'pack', 'plant', 'slices', ' ']
  belongs_to :fridge

  has_one_attached :photo

  validates :name, :expiration_date, :quantity, presence: true
  validate :date_in_future

  def date_in_future
    errors.add(:expiration_date, "Expiration date cannot be in the past") if expiration_date < Date.today
  end

end
