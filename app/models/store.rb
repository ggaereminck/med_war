class Store < ApplicationRecord
    has_many :store_buildings
    has_many :store_units
end
