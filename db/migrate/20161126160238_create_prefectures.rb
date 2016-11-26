class CreatePrefectures < ActiveRecord::Migration[5.0]
  def change
    create_table :prefectures do |t|
      t.integer :code, null: false
      t.string :name, null: false

      t.timestamps
    end
    add_index :prefectures, :code, unique: true
  end
end
