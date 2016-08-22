class CreateDatasets < ActiveRecord::Migration
  def change
    create_table :datasets do |t|
      t.string :uid
      t.datetime :mindate
      t.datetime :maxdate
      t.string :name
      t.integer :data_coverage
      t.string :d_id 
     
      t.timestamps null: false
    end
  end
end
