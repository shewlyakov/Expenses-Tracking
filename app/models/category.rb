class Category < ApplicationRecord
  has_many :expenses

  validates :title, presence: true
end
