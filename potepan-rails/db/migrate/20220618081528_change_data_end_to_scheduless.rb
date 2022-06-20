class ChangeDataEndToScheduless < ActiveRecord::Migration[5.2]
  def change
    change_column :schedules, :end, :datetime
  end
end
