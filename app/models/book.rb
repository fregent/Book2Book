class Book < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :author, presence: true
  validates :published_year, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :reservation_price, presence: true, numericality: { greater_than: 0 }
  validates :description, presence: true
end
