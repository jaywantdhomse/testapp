class CreateLocationCategories < ActiveRecord::Migration
  def change
    create_table :location_categories do |t|
      t.string :d_id
      t.string :name

      t.timestamps null: false
    end
  end
end
