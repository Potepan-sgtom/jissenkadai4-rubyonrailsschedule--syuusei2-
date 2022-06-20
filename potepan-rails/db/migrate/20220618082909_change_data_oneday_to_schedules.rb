class ChangeDataOnedayToSchedules < ActiveRecord::Migration[5.2]
  def change
    change_column :schedules, :oneday, :boolean
  end
end
