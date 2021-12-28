class StoreBuildingSerializer < ActiveModel::Serializer
  attributes :id, :cost, :name, :description, :unlock_level
end
