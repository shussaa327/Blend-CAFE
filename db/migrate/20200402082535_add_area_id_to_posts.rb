class AddAreaIdToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :area_id, :integer
  end
end
