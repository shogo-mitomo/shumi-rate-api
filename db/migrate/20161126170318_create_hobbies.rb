class CreateHobbies < ActiveRecord::Migration[5.0]
  def change
    create_table :hobbies, comment: '趣味' do |t|
      t.string :name, null: false, comment: '趣味名'

      t.timestamps
    end
    add_index :hobbies, :name, unique: true
  end
end
