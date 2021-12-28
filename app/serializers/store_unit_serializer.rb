class StoreUnitSerializer < ActiveModel::Serializer
  attributes :id, :cost, :name, :description, :attack, :defense, :unlock_level
end
