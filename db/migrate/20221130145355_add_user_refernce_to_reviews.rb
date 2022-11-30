class AddUserRefernceToReviews < ActiveRecord::Migration[7.0]
  def change
    add_reference :reviews, :user, index: true, null: false
  end
end
