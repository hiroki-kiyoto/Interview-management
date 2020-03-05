class Client < ApplicationRecord
  has_many :firstinterviews, dependent: :destroy
  has_many :regularinterviews, dependent: :destroy
  belongs_to :mentor

  validates :name, presence: true
  validates :period, presence: true
  validates :locate, presence: true
end
