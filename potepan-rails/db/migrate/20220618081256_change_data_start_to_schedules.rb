class ChangeDataStartToSchedules < ActiveRecord::Migration[5.2]
  def change
    change_column :schedules, :start, :datetime
  end
end
