class AddPokemonToSightings < ActiveRecord::Migration
  def change
    add_reference :sightings, :pokemon,
      index: true, foreign_key: true, null: false
  end
end
