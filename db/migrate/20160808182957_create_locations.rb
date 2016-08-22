class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.datetime :mindate
      t.datetime :maxdate
      t.string :name
      t.string :data_coverage
      t.string :d_id

      t.timestamps null: false
    end
  end
end
