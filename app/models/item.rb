class Item < ApplicationRecord
  has_many :outfit_items
  has_many :order_outfit_items

  validates :name, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :photo, presence: true
end
