class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
      t.date :date, null: false
      t.time :time, null: false
      t.string :location, null: false
      t.string :observer
      t.timestamps null: false
    end
  end
end
