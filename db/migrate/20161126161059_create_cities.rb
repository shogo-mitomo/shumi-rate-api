class CreateCities < ActiveRecord::Migration[5.0]
  def change
    create_table :cities, comment: '市区町村' do |t|
      t.string  :code,          null: false,             comment: '市区町村コード'
      t.string  :name,          null: false,             comment: '市区町村名'
      t.integer :big_city_flag, null: false,             comment: '特別区・行政区フラグ'
      t.integer :population,    null: false, default: 0, comment: '人口'
      t.references :prefecture, foreign_key: true, null: false

      t.timestamps
    end
    add_index :cities, :code, unique: true
  end
end
