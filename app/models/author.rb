class Author < ApplicationRecord
  has_many :books, through: :writings
end
