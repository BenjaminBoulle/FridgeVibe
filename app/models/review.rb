class Review < ApplicationRecord
  belongs_to :recipe

  validates :content, :rating, presence: true
end
