class RenameForeignKeys < ActiveRecord::Migration[5.0]
  def change
    rename_column :cities, :prefectures_id, :prefecture_id
    rename_column :counts, :cities_id, :city_id
    rename_column :counts, :hobbies_id, :hobby_id
  end
end
