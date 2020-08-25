class CreateBuildings < ActiveRecord::Migration[6.0]
  def change
    create_table :buildings,{:id => false, :primary_key => :id } do |t|
      t.primary_key :id
      t.text :description
      t.string :construction_year
      t.text :location
      t.float :location_x
      t.float :location_y
      t.integer :flats
      t.integer :floors
      t.boolean :cellar
      t.boolean :bim
      t.decimal :roof_area
      t.decimal :blind_facade_area
      t.decimal :opend_facade_area
      t.decimal :gross_surface_area
      t.decimal :total_pra
      t.decimal :process_pra
      t.decimal :product_pra
    end

  end
end
