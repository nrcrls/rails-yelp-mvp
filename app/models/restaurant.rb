class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, :address, :category, :phone_number, presence: true
  CUISINE = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :category, inclusion: { in: CUISINE }
end
