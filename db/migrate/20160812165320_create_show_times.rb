class CreateShowTimes < ActiveRecord::Migration
  def change
    create_table :show_times do |t|
      t.integer :band_id
      t.integer :event_id
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps null: false
    end
  add_index :show_times, [:event_id, :band_id]
  end
end
