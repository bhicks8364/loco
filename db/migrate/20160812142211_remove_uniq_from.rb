class RemoveUniqFrom < ActiveRecord::Migration
  def change
    remove_index :purchases, [:event_id, :buyer_id]
    add_index :purchases, [:event_id, :buyer_id], unique: false
  end
end
