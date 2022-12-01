class Review < ApplicationRecord
  belongs_to :recipe
  belongs_to :user

  RATING = ['1', '2', '3', '4', '5']

  validates :content, :rating, presence: true
end
