class CreateCities < ActiveRecord::Migration[5.0]
  def change
    create_table :cities do |t|
      t.string :code, null: false
      t.string :name, null: false
      t.integer :big_city_flag, null: false
      t.references :prefectures, foreign_key: true, null: false

      t.timestamps
    end
    add_index :cities, :code, unique: true
  end
end
