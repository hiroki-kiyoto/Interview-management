class Client < ApplicationRecord
  has_many :firstinterviews
  has_many :regularinterviews
end
