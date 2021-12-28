class StoreResourceSerializer < ActiveModel::Serializer
  attributes :id, :cost, :name, :amount, :unlock_level
end
