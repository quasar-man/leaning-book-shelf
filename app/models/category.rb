class Category < ApplicationRecord
  has_many :books, through: :categorizes
end
