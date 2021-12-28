class BuildingResourceSerializer < ActiveModel::Serializer
  attributes :id, :amount, :collect_cooldown, :last_collected_at
end
