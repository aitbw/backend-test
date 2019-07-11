class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title, null: false
      t.string :location
      t.text :description
      t.datetime :date_and_time, null: false
      t.decimal :price, precision: 2

      t.timestamps
    end
  end
end
