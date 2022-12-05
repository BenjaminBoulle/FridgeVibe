class Ingredient < ApplicationRecord
  attr_accessor :amount, :type

  TYPE = %w[g kg cl l pack plant]
  belongs_to :fridge

  has_one_attached :photo

  validates :name, :expiration_date, :quantity, presence: true
  validate :date_in_future

  def date_in_future
    errors.add(:expiration_date, "Expiration date cannot be in the past") if expiration_date < Date.today
  end

end
