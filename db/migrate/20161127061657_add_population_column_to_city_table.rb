class AddPopulationColumnToCityTable < ActiveRecord::Migration[5.0]
  def change
    add_column :cities, :population, :integer, null: false, default: 0
  end
end
