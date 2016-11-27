class ChangeIndexOfCityTable < ActiveRecord::Migration[5.0]
  def change
    remove_index :cities, :code
    add_index :cities, [:code, :prefecture_id], unique: true
  end
end
