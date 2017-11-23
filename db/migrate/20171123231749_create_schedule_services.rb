class CreateScheduleServices < ActiveRecord::Migration[5.0]
  def change
    create_table :schedule_services do |t|
      t.decimal :total
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
