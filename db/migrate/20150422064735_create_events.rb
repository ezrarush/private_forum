class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :start_time
      t.datetime :end_time
      t.boolean :all_day
      t.integer :event_type, :default => 1
      t.text :blurb

      t.timestamps null: false
    end
  end
end
