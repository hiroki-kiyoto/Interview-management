class Mentor < ApplicationRecord
  has_many :clients, dependent: :destroy

  validates :name, presence: true
  validates :locate, presence: true
end
