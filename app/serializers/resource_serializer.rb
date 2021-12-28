class ResourceSerializer < ActiveModel::Serializer
  attributes :id, :name, :img, :amount
end
