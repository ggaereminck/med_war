class BuildingSerializer < ActiveModel::Serializer
  attributes :id, :name, :resource, :img, :sell_amt
end
