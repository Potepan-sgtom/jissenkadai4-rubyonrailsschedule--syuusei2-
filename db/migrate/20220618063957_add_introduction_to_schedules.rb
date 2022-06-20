class AddIntroductionToSchedules < ActiveRecord::Migration[5.2]
  def change
    add_column :schedules, :introduction, :string
  end
end
