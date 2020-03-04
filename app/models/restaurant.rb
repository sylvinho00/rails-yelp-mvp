class Restaurant < ApplicationRecord
  RESTAURANT_CATEGORIES = ['chinese', 'italian', 'japanese', 'french', 'belgian']
  has_many :reviews, dependent: :destroy
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: RESTAURANT_CATEGORIES }
end
