class CreatePokemon < ActiveRecord::Migration
  def change
    create_table :pokemon do |t|
      t.integer :national_poke_num, null: false
      t.string :name, null: false
      t.string :type_one
      t.string :type_two
      t.integer :generation
      t.integer :total_points
      t.integer :base_hp
      t.integer :base_attack
      t.integer :base_defense
      t.integer :base_sp_attack
      t.integer :base_sp_defense
      t.integer :base_speed
      t.timestamps null: false
    end
  end
end
