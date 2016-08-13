class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :name
      t.text :description
      t.string :phone_number
      t.string :website
      t.string :contact_name
      t.string :tagline
      t.string :category
      t.datetime :approved_at
      t.integer :approved_by

      t.timestamps null: false
    end
  end
end
