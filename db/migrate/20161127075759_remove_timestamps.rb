class RemoveTimestamps < ActiveRecord::Migration[5.0]
  def change
    remove_column :counts, :updated_at
    remove_column :counts, :created_at
  end
end
