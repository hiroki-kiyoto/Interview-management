class Client < ApplicationRecord
  has_many :firstinterviews
  has_many :regularinterviews
  belongs_to :mentor

  validates :name, presence: true
  validates :period, presence: true
  validates :locate, presence: true
end
