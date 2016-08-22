class CreateDatacategories < ActiveRecord::Migration
  def change
    create_table :datacategories do |t|
      t.string :d_id
      t.string :name

      t.timestamps null: false
    end
  end
end
