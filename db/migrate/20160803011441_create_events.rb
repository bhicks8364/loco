class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :start_date
      t.datetime :end_date
      t.string :address
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :price

      t.timestamps null: false
    end
  end
end
