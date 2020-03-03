class Client < ApplicationRecord
  has_many :firstinterviews
  has_many :regularinterviews
  belongs_to :mentor
end
