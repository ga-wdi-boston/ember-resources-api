class Pokemon < ActiveRecord::Base
  has_many :sightings, inverse_of: :pokemon
end
