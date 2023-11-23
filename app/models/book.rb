class Book < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy
  has_many :reviews, dependent: :destroy

  include PgSearch::Model
  pg_search_scope :search_by_title_and_author,
    against: [ :title, :author ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
  # validates :title, presence: true
  # validates :author, presence: true
  # validates :published_year, presence: true, numericality: { only_integer: true, greater_than: 0 }
  # validates :reservation_price, presence: true, numericality: { greater_than: 0 }
  # validates :description, presence: true
end
