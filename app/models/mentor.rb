class Mentor < ApplicationRecord
  has_many :clients

  validates :name, presence: true
  validates :locate, presence: true
end
