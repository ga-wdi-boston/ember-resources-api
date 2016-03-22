class CreatePokemon < ActiveRecord::Migration
  def change
    create_table :pokemon do |t|
      t.integer :national_poke_num, null: false
      t.string :name, null: false
      t.timestamps null: false
    end
  end
end
