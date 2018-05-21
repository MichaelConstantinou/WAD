class CreateCrags < ActiveRecord::Migration[5.1]
  def change
    create_table :crags do |t|
      t.string :name
      t.string :image
      t.float :location_lat
      t.float :location_lon

      t.timestamps
    end
  end
end
