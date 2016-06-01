class CreateRentals < ActiveRecord::Migration
  def change
    create_table :rentals do |t|
      t.date :borrowed_on
      t.date :returned_on
      t.string :description
      t.integer :vehicle_id

      t.timestamps null: false
    end
  end
end
