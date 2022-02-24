class User < ApplicationRecord
  validates :password, :email, presence: true
end
