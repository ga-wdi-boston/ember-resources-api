class Sighting < ActiveRecord::Base
  belongs_to :pokemon, inverse_of: :sightings
end
