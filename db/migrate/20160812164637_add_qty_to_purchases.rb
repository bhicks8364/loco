class AddQtyToPurchases < ActiveRecord::Migration
  def change
    add_column :purchases, :qty, :integer
  end
end
