class CreateRensyus < ActiveRecord::Migration[5.2]
  def change
    create_table :rensyus do |t|
      t.string :name
      t.integer :age
      t.boolean :is_marriaged

      t.timestamps
    end
  end
end
