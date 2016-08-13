class AddPriceToEvents < ActiveRecord::Migration
  def change
    remove_column :events, :price, :string
    add_column :events, :price, :float
  end
end
