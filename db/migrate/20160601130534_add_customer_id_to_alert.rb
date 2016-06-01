class AddCustomerIdToAlert < ActiveRecord::Migration
  def change
    add_column :alerts, :customer_id, :integer
  end
end
