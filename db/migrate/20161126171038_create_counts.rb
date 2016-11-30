class CreateCounts < ActiveRecord::Migration[5.0]
  def change
    create_table :counts, comment: '取得件数' do |t|
      t.string  :type,  null: false,             comment: '取得件数種別'
      t.integer :value, null: false, default: 0, comment: '取得件数値'
      t.references :city,  foreign_key: true, null: false
      t.references :hobby, foreign_key: true, null: false

      t.timestamps
    end
    add_index :counts, :type
  end
end
