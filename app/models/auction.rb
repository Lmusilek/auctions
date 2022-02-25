class Auction < ApplicationRecord
  belongs_to :user, optional: true
  has_many :bids
  validates :title, :description, :start_date, :end_date, presence: true
end
