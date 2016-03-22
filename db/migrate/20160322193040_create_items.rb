class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.string :category, null: false
      t.string :effect, null: false
      t.timestamps null: false
    end
  end
end
