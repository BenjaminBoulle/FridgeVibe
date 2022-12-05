class Recipe < ApplicationRecord
  belongs_to :user
  has_many :reviews

  has_one_attached :photo

  validates :name, :photo, :ingredients, presence: true
  validate :prep_time_pos
  validate :cook_time_pos

  def cook_time_pos
    errors.add(:cook_time, "must be positive") if cook_time.negative?
  end

  def prep_time_pos
    errors.add(:prep_time, "must be positive") if prep_time.negative?
  end

  CUISINE = %w[Mexican Turkish Thai Chinese Japanese Indian Italian Greek Spanish Lebanese]
end
