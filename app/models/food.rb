class Food < ApplicationRecord
  validates :item, presence: true
  validates :category, presence: true
end
