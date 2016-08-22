class CreateDatatypes < ActiveRecord::Migration
  def change
    create_table :datatypes do |t|
      t.string :d_id
      t.string :name
      t.datetime :mindate
      t.datetime :maxdate
      t.integer :data_coverage

      t.timestamps null: false
    end
  end
end
