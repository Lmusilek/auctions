class Auction < ApplicationRecord
  belongs_to :user, optional: true
  validates :title, :description, :start_date, :end_date, presence: true
end
