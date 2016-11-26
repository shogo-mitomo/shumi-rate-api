class CreateHobbies < ActiveRecord::Migration[5.0]
  def change
    create_table :hobbies do |t|
      t.string :name, null: false

      t.timestamps
    end
    add_index :hobbies, :name, unique: true
  end
end
