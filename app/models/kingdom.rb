class Kingdom < ApplicationRecord
    has_many :buildings
    has_many :resources
    has_many :armies
end
