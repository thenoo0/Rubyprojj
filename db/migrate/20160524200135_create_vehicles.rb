class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :brand
      t.string :model
      t.integer :year
      t.integer :power
      t.text :description

      t.timestamps null: false
    end
  end
end
