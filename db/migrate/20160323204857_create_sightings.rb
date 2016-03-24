class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
      t.datetime :observation_time
      t.string :location
      t.string :observer
      t.timestamps null: false
    end
  end
end
