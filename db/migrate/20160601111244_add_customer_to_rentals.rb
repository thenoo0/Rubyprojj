class AddCustomerToRentals < ActiveRecord::Migration
  def change
    add_column :rentals, :custom, :string
  end
end
