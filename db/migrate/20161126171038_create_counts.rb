class CreateCounts < ActiveRecord::Migration[5.0]
  def change
    create_table :counts do |t|
      t.string :type, null: false
      t.integer :value, null: false, default: 0
      t.references :cities, foreign_key: true, null: false
      t.references :hobbies, foreign_key: true, null: false

      t.timestamps
    end
    add_index :counts, :type
  end
end
