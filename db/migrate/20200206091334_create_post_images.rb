class CreatePostImages < ActiveRecord::Migration[5.2]
  def change
    create_table :post_images do |t|
      t.string :post_image_id
      t.integer :user_id
      t.integer :shop_id
      t.integer :post_id

      t.timestamps
    end
  end
end
