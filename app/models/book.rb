class Book < ApplicationRecord
  belongs_to :publisher
  belongs_to :leaning_user

  has_one :book_score_avarage
  has_many :book_reviews
  has_many :authors, through: :writings
  has_many :categories, through: :categorizes
  has_many :tags, through: :taggings
end
