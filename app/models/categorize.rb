class Categorize < ApplicationRecord
  belongs_to :book
  belongs_to :category
end
