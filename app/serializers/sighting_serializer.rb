class SightingSerializer < ActiveModel::Serializer
  attributes :id, :observation_time, :location, :observer, :pokemon_id
end
