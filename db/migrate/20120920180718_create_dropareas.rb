class CreateDropareas < ActiveRecord::Migration
  def change
    create_table :dropareas do |t|
      t.references :vehicle
      t.references :accessory
      t.integer :left
      t.integer :top
      t.integer :width
      t.integer :height

      t.timestamps
    end
    add_index :dropareas, :vehicle_id
    add_index :dropareas, :accessory_id
  end
end
