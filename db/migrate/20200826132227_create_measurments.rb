class CreateMeasurments < ActiveRecord::Migration[6.0]
  def change
    create_table :measurements do |t|
      t.integer :sensor_id
      t.decimal :value
      t.string :units

      t.timestamp :timestamp
    end
  end
end
