class CreateScheduleServiceItems < ActiveRecord::Migration[5.0]
  def change
    create_table :schedule_service_items do |t|
      t.integer :status
      t.date :date
      t.references :service, foreign_key: true
      t.references :schedule_service, foreign_key: true

      t.timestamps
    end
  end
end
