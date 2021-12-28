class UnitSerializer < ActiveModel::Serializer
  attributes :id, :name, :attack, :defense, :img, :belongs_to
end
