class CreateEventLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :event_logs do |t|

      t.timestamps
    end
  end
end
