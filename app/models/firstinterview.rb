class Firstinterview < ApplicationRecord
    belongs_to :client

    validates :starttime, presence: true
    validates :endtime, presence: true
end
