class CreateSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :schedules do |t|
      t.string :title
      t.bigint :start
      t.bigint :end
      t.string :oneday

      t.timestamps
    end
  end
end
