class Item < ApplicationRecord

  validates :name, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :size, presence: true
  validates :photo, presence: true
end
