class StoreSerializer < ActiveModel::Serializer
  attributes :id
  has_many :store_units
  has_many :store_buildings
end
