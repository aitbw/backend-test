class SeparateDateAndTimeAttribute < ActiveRecord::Migration[5.2]
  def change
    change_table :events do |t|
      t.rename :date_and_time, :event_date
      t.time :event_time
    end
  end
end
