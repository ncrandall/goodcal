class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :date
      t.string :location
      t.string :title
      t.string :description
      t.boolean :repeat
      t.boolean :all_day
      t.integer :ownder

      t.timestamps
    end
  end
end
