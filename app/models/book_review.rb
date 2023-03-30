class BookReview < ApplicationRecord
  belongs_to :leaning_user
  belongs_to :book
end
