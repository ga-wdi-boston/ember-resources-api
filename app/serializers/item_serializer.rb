class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :effect
end
