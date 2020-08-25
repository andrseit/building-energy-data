class CreateSensors < ActiveRecord::Migration[6.0]
  def change
    create_table :sensors do |t|
      t.integer :building_id
      t.integer :category
    end
  end
end
