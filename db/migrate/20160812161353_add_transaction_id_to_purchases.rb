class AddTransactionIdToPurchases < ActiveRecord::Migration
  def change
    add_column :purchases, :transaction_id, :integer
    add_index :purchases, :transaction_id
  end
end
